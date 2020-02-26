class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
<<<<<<< HEAD
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_universal_and_determines_account
  has_one :member, :dependent => :destroy
  has_many :user_projects
  has_many :projects, through: :user_projects
  
  def is_admin?
    is_admin
  end
=======
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  acts_as_universal_and_determines_account
  has_one :member, :dependent => :destroy
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198

end
