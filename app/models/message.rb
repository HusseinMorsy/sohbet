class Message < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def author
    user.name
  end
end
