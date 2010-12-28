require 'fileutils'

task :default => :setup

desc 'Installs dotfiles from this distribution for the first time'
task :setup do

  files = Dir.glob('*', File::FNM_DOTMATCH)
  files = files - ['.', '..', '.git', 'Rakefile', '.Rakefile.swp']
  files.map do |file|
    File.expand_path(file)
  end

  files.each do |from|
    from = File.expand_path(from)
    to = File.expand_path(File.join('~', File.basename(from)))

    puts "* Linking #{from} to #{to}."
    FileUtils.ln_sf(from, to)
  end
end

# vim: set nobackup
