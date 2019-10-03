# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sinatra-flash/all/sinatra-flash.rbi
#
# sinatra-flash-0.3.0
module Sinatra
end
module Sinatra::Flash
  def self.registered(app); end
end
class Sinatra::Flash::FlashHash < Anonymous_Delegator_14
  def []=(key, value); end
  def discard(key = nil); end
  def initialize(session); end
  def keep(key = nil); end
  def next; end
  def now; end
  def sweep; end
end
module Sinatra::Flash::Storage
  def flash(key = nil); end
end
module Sinatra::Flash::Style
  def styled_flash(key = nil); end
end
class Sinatra::Application < Sinatra::Base
  extend Sinatra::Flash
  include Sinatra::Flash::Storage
  include Sinatra::Flash::Style
end
