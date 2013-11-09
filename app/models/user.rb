class User < ActiveRecord::Base
  has_one :picture, as: :pictureable, dependent: :destroy
  accepts_nested_attributes_for :picture
  has_many :projects, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :picture_attributes
  validates :first_name, :last_name, presence: true
  after_create :send_welcome_email 

  def full_name
    first_name + ' ' + last_name
  end

  def street_name
    (first_name[0] + '-' + last_name[0..4]).to_s
  end

  private
  
  def send_welcome_email 
    UserMailer.welcome(self).deliver
  end

end
