class EndpointApi < Grape::API
  PREFIX = '/api'

  format :json

  mount V1::Root
end
