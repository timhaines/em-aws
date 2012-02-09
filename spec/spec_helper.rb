# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper.rb"` to ensure that it is only
# loaded once.

require "bundler/setup"
require "em-aws"
require "webmock/rspec"

Dir[File.join File.dirname(__FILE__), 'support', '**', '*.rb'].each {|f| require f}

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  # config.filter_run :focus
  
  config.before(:each) do
    EventMachine::AWS.aws_access_key_id = 'FAKE_KEY'
    EventMachine::AWS.aws_secret_access_key = 'FAKE_SECRET'
  end
  config.include EventMachineHelper
end