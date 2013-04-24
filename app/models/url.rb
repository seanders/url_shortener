require 'digest/md5'

class Url < ActiveRecord::Base

  belongs_to :user

  # Remember to create a migration!
  validates :long, :format => {
    :with => /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/,
    :message => "Wrong!!!"
  }
  before_save :generate_short

  private

  def generate_short
    # self.short = self.long.hash.abs.to_s[0..5]
    self.short = digest = Digest::MD5.hexdigest(self.long).to_s[0..5]
  end

end

