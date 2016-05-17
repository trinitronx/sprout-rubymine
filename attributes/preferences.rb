default['sprout']['rubymine']['preferences']['repository'] =
  'https://github.com/pivotal/Pivotal-Preferences-RubyMine.git'
default['sprout']['rubymine']['preferences']['clone_dir'] =
  "#{Chef::Config[:file_cache_path]}/sprout-rubymine-preferences"
default['sprout']['rubymine']['preferences']['revision'] = 'master'

default['sprout']['rubymine']['preferences']['install_dir'] =
  "#{node['sprout']['home']}/Library/Preferences/RubyMine60"

default['sprout']['rubymine']['preferences']['dirs_to_link'] = %w(
  codestyles
  keymaps
  options
  templates
)
