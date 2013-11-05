$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib','./spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new


task :default => :spec

desc"Pruebas unitarias de la clase matriz"
  task :test do
    sh "rspec -I. spec/matriz_spec.rb"
  end
 
desc "Ejecutar con documentacion"
  task :bin do
    sh "ruby -Ilib/ lib/matriz.rb"
  end
  

