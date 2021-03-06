require 'bundler/setup'
require 'viisp/auth'
require 'webmock/rspec'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before do
    VIISP::Auth.configure do |c|
      c.test = true
      c.postback_url = 'https://localhost'
    end
  end
end
