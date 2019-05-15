desc 'Deploy the site'
task :deploy do
  sh 'bundle install'
  sh 'bundle exec jekyll clean'
  sh 'bundle exec jekyll build -d ../rg-3.github.io'
  Dir.chdir('../rg-3.github.io') do 
    sh 'git add .'
    sh 'git commit -am "Update"'
    sh 'git push origin master'
  end 
end
task default: :deploy