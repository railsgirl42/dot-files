require 'rubygems'
require 'hirb'
Hirb::View.enable
require 'irb/completion'
require 'irb/ext/save-history'

# Tell irb how much it should remember and where
# to save it's history
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# Simple prompt
IRB.conf[:PROMPT_MODE]  = :SIMPLE

# Auto indent code
IRB.conf[:AUTO_INDENT]  = true

# This is only done when using the Rails console
if rails_env = ENV['RAILS_ENV']

  # This is only done when the irb session and
  # rails are fully loaded (from Mike Clark)
  IRB.conf[:IRB_RC] = Proc.new do

    # Log ActiveRecord calls to standard out
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end
end

