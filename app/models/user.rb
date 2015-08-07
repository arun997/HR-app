class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :requests, dependent: :destroy 
  
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
 
 def employee_name 
    first_name + " " + last_name
 end
  
  def user_id
    id
  end
end
