class User < ActiveRecord::Base
  def self.users
    all.order(:name).collect{|u| [u.name, u.id]}
  end
end
