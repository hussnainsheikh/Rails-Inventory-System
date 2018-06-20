class User < ActiveRecord::Base
  after_create :assign_default_role
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable , :confirmable, :lockable

  attr_accessible :email, :password, :password_confirmation, :encrypted_password, :encrypted_password_confirmation, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :role, :name, :designation, :date_of_birth, :gender

  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

  def set_default_role
    self.role ||= :user
  end
  user = User.find(16)
  user.add_role :admin

end
