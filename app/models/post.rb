# Post is mapped with game
class Post < ActiveResource::Base
  self.include_format_in_path = false
  self.format = :json
  self.site = 'http://app/api'

  has_many :comments
end
