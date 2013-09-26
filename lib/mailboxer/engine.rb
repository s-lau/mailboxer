# Database foreign keys
require 'foreigner'
begin
  require 'sunspot_rails'
rescue LoadError
end

module Mailboxer
  class Engine < Rails::Engine
    initializer "mailboxer.models.messageable" do
      ActiveSupport.on_load(:active_record) do
        extend Mailboxer::Models::Messageable::ActiveRecord
      end
    end
  end
end
