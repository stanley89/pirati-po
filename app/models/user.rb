class User < ActiveRecord::Base
#  has_paper_trail

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :omniauth_providers => [:open_id]
  #devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook, :twitter]

  def self.find_for_open_id(access_token, signed_in_resource=nil)
    data = access_token['user_info']
    if user = User.find_by(openid_identifier: access_token.uid)
      user
    else #  Create a user with a stub password.
      User.create!(:openid_identifier => access_token.uid, :name => access_token.info.name, :email => access_token.info.email)
    end
  end

  def ability
    @ability ||= Ability.new(self)
  end
  delegate :can?, :cannot?, :to => :ability

end
