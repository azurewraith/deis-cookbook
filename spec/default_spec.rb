require 'spec_helper'

describe 'deis::default' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end

  it 'includes apt::default' do
    expect(chef_run).to include_recipe 'apt::default'
  end

  it 'installs fail2ban' do
    expect(chef_run).to install_package('fail2ban')
  end

  it 'installs git' do
    expect(chef_run).to install_package('git')
  end

  it 'installs make' do
    expect(chef_run).to install_package('make')
  end

  it 'installs ntp' do
    expect(chef_run).to install_package('ntp')
  end

  it 'does not remove an old macaddr gem before reinstalling' do
    expect(chef_run).to install_chef_gem('macaddr').with(version: '1.6.1')
  end

  it 'installs etcd gem' do
    expect(chef_run).to install_chef_gem('etcd').with(version: '0.0.6')
  end

  it 'includes docker::default' do
    expect(chef_run).to include_recipe('docker::default')
  end

  it 'creates deis user' do
    expect(chef_run).to create_user(chef_run.node['deis']['username'])
  end

  it 'creates directory' do
    expect(chef_run).to create_directory(chef_run.node['deis']['dir'])
  end

  it 'sets up sudo for deis user' do
    expect(chef_run).to install_sudo(chef_run.node['deis']['username'])
  end

  it 'creates log directory' do
    expect(chef_run).to create_directory(chef_run.node['deis']['log_dir'])
  end
end
