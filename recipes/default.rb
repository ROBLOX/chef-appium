# install appium
case node['platform_family']
when 'rhel', 'debian'
when 'mac_os_x'
  include_recipe 'java'
  include_recipe 'homebrew'
  # output="#{Chef::JSONCompat.to_json_pretty(node.to_hash)}"
  # log output
  # output = node.to_yaml
  # file '/tmp/node.json' do
  #   content output
  # end

else
  log('Appium cannot be installed on this platform using this cookbook.') { level :warn }
  return
end

include_recipe 'nodejs'
nodejs_npm 'appium' do
  path "#{node['appium']['nodejs_home']}/bin" unless node['appium']['nodejs_home'].nil?
  options node['appium']['npm_options']
  version node['appium']['version']
  user node['appium']['user']
end
