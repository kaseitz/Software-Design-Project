# application.rb
# @Author: Ricky
# @E-Mail: rwdavidsonjr@yahoo.com
# @Date:   2018-03-20 20:54:37
# @Last Modified time: 2018-03-20 20:55:19
require_relative 'boot'

require 'rails/all'

# application.rb
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Csc312
  class Application < Rails::Application
    # Auto load lib folder
    config.autoload_paths << "#{Rails.root}/lib"

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
