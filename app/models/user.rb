class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :display_name, :email, :password, :password_confirmation, :remember_me
  
  
  has_many :articles, :foreign_key => :author_id
  
  validates :display_name, :email, :presence => true

  
  
  
  def to_s
    display_name
  end
  
end
