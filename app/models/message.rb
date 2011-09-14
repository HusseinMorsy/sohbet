class Message < ActiveRecord::Base
  belongs_to :user

  def author
    user.name
  end
end
