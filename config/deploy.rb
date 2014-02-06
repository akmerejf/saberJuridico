# -*- coding: utf-8 -*-
require "bundler/capistrano"  # Essas duas primeiras linhas são importacoes para o projeto
require "rvm/capistrano"
server "107.170.24.19", :web, :app, :db , primary: true

set :application, "saberJuridico" # Nome da app
set :user, "akmere" # usuario do SERVIDOR, nome de usuario do servidor...
set :deploy_to, "/home/apps/#{application}" #Local no servidor onde vai ficar o projeto
set :use_sudo, false # Não executar os Comandos com 'sudo' no inicio

set :scm, "git" # Tipo: git, bitcucket...
set :repository, "git@github.com:akmerejf/saberJuridico.git" #URL do repositorio
set :branch, "master"

set :rvm_ruby_string, :local          	# use the same ruby as used locally for deployment
set :rvm_autolibs_flag, "read-only"  

set :rails_env, "production"
default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup"


namespace :deploy do
 task :setup_inicial_nginx, roles: :app do
   	sudo "ln -nfs #{current_path}/config/nginx_site.conf /etc/nginx/sites-enabled/#{application}"
   	sudo "service nginx restart"
   	puts "Criou o Link do arquivo de configuração do ngingx"
    end
    
    task :setup_db, roles: :app do
   	 run "cd #{current_path}; rake db:create:all RAILS_ENV=#{rails_env}"
    end

    after "deploy:setup", "deploy:setup_inicial_nginx"
    after "deploy", "deploy:setup_db"
    

end   
