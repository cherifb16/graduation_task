class User < ApplicationRecord

  before_save {email.downcase!}
  
  enum roles: [:Customer, :Admin, :SuperAdmin]
  
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255},
                    format: { with: VALID_EMAIL_FORMAT },
                    uniqueness: { case_sensitive: false }
  # validates :role, inclusion: { in: roles }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  
  # Returns the hash digest of the given string.
  
  has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
   
  def follow!(other_user)
    active_relationships.create!(followed_id: other_user.id)
  end
  
  #Check whether you are following
  def following?(other_user)
    active_relationships.find_by(followed_id: other_user.id)
  end
  
  # def destroy
  #   @user = Relationship.find(params[:id]).followed
  #   current_user.unfollow!(@user)
  # end
  def unfollow!(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def admin?
    self.role == 'Admin'
  end
  
  def superadmin?
    self.role = 'SuperAdmin'
  end

end
