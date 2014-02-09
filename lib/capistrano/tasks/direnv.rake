namespace :direnv do
  task :hook do
    fetch(:direnv_map_bins).each do |command|
      direnv_path = fetch(:direnv_path, 'direnv')
      envrc_path = fetch(:envrc_path, shared_path)
      SSHKit.config.command_map.prefix[command.to_sym].unshift("#{direnv_path} exec #{envrc_path}")
    end
  end
end

Capistrano::DSL.stages.each do |stage|
  after stage, 'direnv:hook'
end

namespace :load do
  task :defaults do
    set :direnv_map_bins, %w{rake ruby bundle}
  end
end
