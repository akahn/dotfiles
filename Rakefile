require 'fileutils'

task :default => :setup

desc 'Installs dotfiles from this distribution for the first time'
task :setup do

  files = Dir.glob('*', File::FNM_DOTMATCH)
  files = files - ['.', '..', 'Rakefile', '.Rakefile.swp']

  puts "Linking the following files:"
  files.map do |file|
    puts file
    File.expand_path(file)
  end


  files.each do |from|
    to = File.expand_path(File.join('~', File.basename(from)))

    puts " - " + [from, to].join(' -> ')
    if File.exists?(to)
      print "   ! Target exists... "
      if File.symlink? to
        FileUtils.rm to
        puts "as a symlink, removed"
      else
        print "as a normal file/directory, moving to #{File.basename(to)}~... "
        toto = to + '~'

        if File.exist? toto
          print "already exists! r)emove, or s)kip? "
          order = STDIN.gets.chomp

          case order
          when 'r'
            print '   ! Removing... '
            FileUtils.rm toto
          when 's'
            puts '   ! Okay, skipped '
            next
          else
            puts "   ! Invalid entry, so skipping"
            next
          end
        end

        FileUtils.mv to, toto
        puts "Done!"
      end
    end

    FileUtils.symlink(from, to)
  end
end

# vim: set nobackup
