class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,:firstname, :lastname, :password, :password_confirmation, :remember_me

  def self.find_by_name(name)
    firstname, lastname = name.split
    User.where(:firstname => firstname , :lastname => lastname).first
  end

  def name
    "#{firstname} #{lastname}"
  end
end
