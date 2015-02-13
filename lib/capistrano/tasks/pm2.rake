desc 'PM2 integration'
namespace :pm2 do
  desc 'Restart server'
  task :restart do
    on roles(:web) do
      within current_path do
        execute :pm2, 'restart', fetch(:pm2_config)
      end
    end
  end

  desc 'Stop server'
  task :stop do
    on roles(:web) do
      within current_path do
        execute :pm2, 'stop', fetch(:pm2_config)
      end
    end
  end

  desc 'Start server'
  task :start do
    on roles(:web) do
      within current_path do
        execute :pm2, 'start', fetch(:pm2_config)
      end
    end
  end

  desc 'Kill PM2'
  task :kill do
    on roles(:web) do
      execute :pm2, 'kill'
    end
  end

  desc 'List of processes'
  task :list do
    on roles(:web) do
      info "Processes list: \n #{ capture :pm2, 'list' }"
    end
  end

  desc 'Startup script'
  task :startup do
    on roles(:web) do
      execute :pm2, 'startup'
    end
  end

  desc 'Save the processes list'
  task :save do
    on roles(:web) do
      execute :pm2, 'save'
    end
  end

  desc 'Describe process by id or name'
  task :describe, :id do |_task, args|
    on roles(:web) do
      info(capture :pm2, 'describe', args[:id])
    end
  end

  desc 'Delete process by id or name'
  task :delete, :id do |_task, args|
    on roles(:web) do
      execute :pm2, 'delete', args[:id]
    end
  end

  after 'deploy:updated', :restart
end

namespace :load do
  task :defaults do
    set :pm2_config, 'config/pm2.json'
  end
end
