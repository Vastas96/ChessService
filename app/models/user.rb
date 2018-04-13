class User < ActiveResource::Base
  self.include_format_in_path = false
  self.format = :json
  self.site = 'http://app/api'
end