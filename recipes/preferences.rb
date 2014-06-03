require 'time'

preferences = node['sprout']['rubymine']['preferences']

git preferences['clone_dir'] do
  repository preferences['repository']
  revision preferences['revision']
  action :sync
  user node['current_user']
end

directory preferences['install_dir'] do
  owner node['current_user']
  mode '0755'
  action :create
end

backup_time = Time.now.utc.iso8601

preferences['dirs_to_link'].each do |dir_to_link|
  execute "Backup #{::File.join(preferences['install_dir'], dir_to_link)}" do
    command <<-CMD
              mv \
                #{::File.join(preferences['install_dir'], dir_to_link)} \
                #{::File.join(preferences['install_dir'], dir_to_link)}.bak.#{backup_time}
    CMD
  end

  link ::File.join(preferences['install_dir'], dir_to_link) do
    to ::File.join(preferences['clone_dir'], 'RubyMineXX', dir_to_link)
    owner node['current_user']
  end
end
