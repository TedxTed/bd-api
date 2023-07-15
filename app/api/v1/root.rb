require_relative 'member/member_api'

module V1
  class Root < Grape::API
    version 'v1', using: :path

    mount V1::Member::Api
  end
end
