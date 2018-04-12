class User < ActiveResource::Base
  self.include_format_in_path = false
  self.format = :json
  self.site = 'http://193.219.91.103:1976/api'
end
