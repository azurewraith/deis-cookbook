## Docker
# hardcode specific docker version
default.docker.version = '0.9.0'
# use lxc execution driver until libcontainer is more stable
default.docker.exec_driver = 'lxc'
# bind docker to all interfaces for external connectivity
default.docker.bind_uri = 'tcp://0.0.0.0:4243'

## rsyslog
default.rsyslog.server_search = 'run_list:recipe\[deis\:\:controller\]'

## Deis
# base
default.deis.dir = '/var/lib/deis'
default.deis.username = 'deis'
default.deis.group = 'deis'
default.deis.log_dir = '/var/log/deis'
default.deis.public_ip = node.ipaddress
default.deis.autoupgrade = true # redeploy containers when images are updated

# development
default.deis.dev.mode = false
default.deis.dev.source = '/vagrant'

default.docker.container_cmd_timeout = 600
default.docker.image_cmd_timeout = 1800

# discovery
default.deis.etcd.repository = 'deis/discovery'
default.deis.etcd.tag = 'latest'
default.deis.etcd.container = 'deis-discovery'
default.deis.etcd.port = 4001
default.deis.etcd.peer_port = 7001
default.deis.etcd.url = 'https://github.com/coreos/etcd/releases/download/v0.3.0/etcd-v0.3.0-linux-amd64.tar.gz'

# database
default.deis.database.repository = 'deis/database'
default.deis.database.tag = 'latest'
default.deis.database.container = 'deis-database'
default.deis.database.port = 5432

# database-data
default.deis.database_data.repository = 'deis/data'
default.deis.database_data.tag = 'latest'
default.deis.database_data.container = 'deis-database-data'

# cache
default.deis.cache.repository = 'deis/cache'
default.deis.cache.tag = 'latest'
default.deis.cache.container = 'deis-cache'
default.deis.cache.port = 6379

# server
default.deis.server.repository = 'deis/controller'
default.deis.server.tag = 'latest'
default.deis.server.container = 'deis-controller'
default.deis.server.port = 8000

# registry
default.deis.registry.repository = 'deis/registry'
default.deis.registry.tag = 'latest'
default.deis.registry.container = 'deis-registry'
default.deis.registry.port = 5000

# set these for registry backend support
default.deis.registry.settings_flavor = 'dev'
default.deis.registry.s3.access_key = 'REPLACEME'
default.deis.registry.s3.secret_key = 'REPLACEME'
default.deis.registry.s3.bucket = 'REPLACEME'
default.deis.registry.s3.encrypt = false
default.deis.registry.s3.secure = false
default.deis.registry.smtp.host = 'REPLACEME'
default.deis.registry.smtp.port = 25
default.deis.registry.smtp.login = 'REPLACEME'
default.deis.registry.smtp.password = 'REPLACEME'
default.deis.registry.smtp.secure = false
default.deis.registry.smtp.from = 'REPLACEME'
default.deis.registry.smtp.to = 'REPLACEME'
default.deis.registry.swift.auth_url = 'REPLACEME'
default.deis.registry.swift.container = 'REPLACEME'
default.deis.registry.swift.username = 'REPLACEME'
default.deis.registry.swift.password = 'REPLACEME'
default.deis.registry.swift.tenant_name = 'REPLACEME'
default.deis.registry.swift.region_name = 'REPLACEME'

# registry-data
default.deis.registry_data.repository = 'deis/data'
default.deis.registry_data.tag = 'latest'
default.deis.registry_data.container = 'deis-registry-data'

# builder
default.deis.builder.repository = 'deis/builder'
default.deis.builder.tag = 'latest'
default.deis.builder.container = 'deis-builder'
default.deis.builder.port = 2222
# change nil to target directory to sync buildpacks from github
default.deis.builder.packs.dir = nil # '/var/lib/deis/buildpacks'
default.deis.builder.packs.defaults = { # rubocop:disable SpaceBeforeFirstArg
  'heroku-buildpack-java' => ['https://github.com/heroku/heroku-buildpack-java.git', 'master'],
  'heroku-buildpack-ruby' => ['https://github.com/heroku/heroku-buildpack-ruby.git', 'master'],
  'heroku-buildpack-python' => ['https://github.com/heroku/heroku-buildpack-python.git', 'master'],
  'heroku-buildpack-nodejs' => ['https://github.com/gabrtv/heroku-buildpack-nodejs', 'master'],
  'heroku-buildpack-play' => ['https://github.com/heroku/heroku-buildpack-play.git', 'master'],
  'heroku-buildpack-php' => ['https://github.com/CHH/heroku-buildpack-php.git', 'master'],
  'heroku-buildpack-clojure' => ['https://github.com/heroku/heroku-buildpack-clojure.git', 'master'],
  'heroku-buildpack-go' => ['https://github.com/kr/heroku-buildpack-go.git', 'master'],
  'heroku-buildpack-scala' => ['https://github.com/heroku/heroku-buildpack-scala', 'master'],
  'heroku-buildpack-dart' => ['https://github.com/igrigorik/heroku-buildpack-dart.git', 'master'],
  'heroku-buildpack-perl' => ['https://github.com/miyagawa/heroku-buildpack-perl.git', 'carton']
}

# logger
default.deis.logger.repository = 'deis/logger'
default.deis.logger.tag = 'latest'
default.deis.logger.container = 'deis-logger'
default.deis.logger.port = 514
default.deis.logger.user = 'syslog'
