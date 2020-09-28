require 'huginn_agent'

#HuginnAgent.load 'huginn_ubereats_agent/concerns/my_agent_concern'
HuginnAgent.register 'huginn_ubereats_agent/ubereats_agent'

require_relative 'huginn_ubereats_agent/uber_eats'
