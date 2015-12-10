RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
Dir[File.expand_path(File.dirname(__FILE__) + "/../app/helpers/**/*.rb")].each(&method(:require))

require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'

class MiniTest::Spec
  include Rack::Test::Methods

  def app(app = nil, &blk)
    @app ||= block_given? ? app.instance_eval(&blk) : app
    @app ||= Padrino.application
  end
end

reporter_options = { color: true, slow_count: 5 }
Minitest::Reporters.use! [
                             Minitest::Reporters::SpecReporter.new,
                             Minitest::Reporters::DefaultReporter.new(reporter_options)
                         ]
