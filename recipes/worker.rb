
docker_image node.deis.worker.repository do
  repository node.deis.worker.repository
  tag node.deis.worker.tag
  action node.deis.autoupgrade ? :pull : :pull_if_missing
  cmd_timeout node.deis.worker.image_timeout
  notifies :redeploy, "docker_container[#{node.deis.worker.container}]", :immediately
end

docker_container node.deis.worker.container do
  container_name node.deis.worker.container
  detach true
  env ["ETCD=#{node.deis.public_ip}:#{node.deis.etcd.port}"]
  image "#{node.deis.worker.repository}:#{node.deis.worker.tag}"
  volume VolumeHelper.worker(node)
  cmd_timeout 600
end
