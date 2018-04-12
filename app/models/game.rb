class Game < ApplicationRecord
  validates :white, presence: true
  validates :black, presence: true
  validates :movetext, presence: true
  validates_with MoveValidator

  after_create :create_post, on: :create
  before_destroy :delete_post

  belongs_to :white, class_name: 'Player', foreign_key: 'white_id'
  belongs_to :black, class_name: 'Player', foreign_key: 'black_id'

  def as_json
    super.merge(comments: comments)
  end

  def create_post
    user = User.first || User.new(username: "ChessAdmin", email: "admin@chess.com")
    user.save
    post = Post.new(
      userId: user.id,
      title: "Game id: #{id}",
      body: "Game between #{white.name} and #{black.name}"
    )
    post.save
    # Since I cannot choose the id of the post
    # I need to create a atribute to map them
    self.update_attributes!(post_id: post.id)
  end

  def delete_post
    Post.delete(post_id)
  end

  def comments
    return nil if post_id.nil?
    comments = Comment.all
    comments.delete_if { |a| a.postId != post_id }
  end
end
