class User < ActiveRecord::Base
  has_many :urls
  def self.authenticate(g_e, g_p)
    @matching_users = User.where("email = ? AND password = ?", g_e, g_p)
    if @matching_users.length == 1
      @matching_users.first
    else
      nil
    end
  end

end