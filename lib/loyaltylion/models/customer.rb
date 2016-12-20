require 'loyaltylion/models/resource'

module LoyaltyLion
  class Customer < Resource
    def get(email = nil)
      client.request(
        :method => :get,
        :path => '/customers',
        :query => {
          :email => email,
        },
      )
    end
  end
end
