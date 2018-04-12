class Game < ApplicationRecord
  validates :white, presence: true
  validates :black, presence: true
  validates :movetext, presence: true
  validates_with MoveValidator

  after_save :create_post, on: :create
  before_destroy :delete_post

  belongs_to :white, class_name: 'Player', foreign_key: 'white_id'
  belongs_to :black, class_name: 'Player', foreign_key: 'black_id'

  def as_json(options)
    super.merge(:include=>[:comments])
  end

  private

  def create_post(user_id = 1)
  	post = Post.new(userId: user_id, title: "#{id}. Game betweet #{white.name} and #{black.name}", body: movetext)
  	post.save
  	# Since I cannot choose the id of the post
  	# I need to create a atribute to map them
  	post_id = post.id
  end

  def delete_post
  	Post.delete(post_id)
  end

  def comments
  	Post.find(post_id).comments
  end
end
