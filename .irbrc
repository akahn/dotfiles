require 'rubygems'
require 'wirble'
require 'irb/completion'
require 'irb/ext/save-history'

Wirble.init
Wirble.colorize

require 'pp'
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "/Users/akahn/.irb-save-history"

module RailsLogging
  def log_to_console
    @console_logging = true
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    reload!
  end

  def dont_log_to_console
    @console_logging = false
    ActiveRecord::Base.logger = nil
    reload!
  end

  def toggle_logging
    @console_logging ? dont_log_to_console : log_to_console
  end
end

if ENV['RAILS_ENV']
  IRB.conf[:IRB_RC] = Proc.new do
    alias :reload :reload!
    include RailsLogging
  end
end

def open(w)
  `open "#{w}"`
  w
end

