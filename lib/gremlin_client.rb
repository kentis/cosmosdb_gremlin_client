# Module encapsulating our code

require 'json'
require 'pathname'
require 'websocket-client-simple'

require './gremlin_client/server_error.rb'
require './gremlin_client/connection_timeout_error.rb'
require './gremlin_client/execution_timeout_error.rb'
require './gremlin_client/connection.rb'
module GremlinClient
end
