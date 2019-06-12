class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :set_admin

  private
  def set_admin
    if User.count == 1
      User.first.update_attribute(:admin, true)
    else
      return true
    end
  end
  
end
