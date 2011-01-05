require 'rubygems'
require 'wirble'
require 'irb/completion'
require 'irb/ext/save-history'

Wirble.init
Wirble.colorize

require 'pp'
IRB.conf[:AUTO_INDENT] = true

if ENV['RAILS_ENV']
  IRB.conf[:IRB_RC] = Proc.new do
    alias :reload :reload!
  end
end
