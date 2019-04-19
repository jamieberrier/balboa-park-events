#require_relative "./balboa_park_events/version"
#require_relative './balboa_park_events/cli'
# Acts as environment

module BalboaParkEvents
  class Error < StandardError; end
  # Your code goes here...
end

require_relative '../config/environment'
