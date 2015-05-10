class Listing < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true

  #adds userid to each listing
  def set_user!(user)
    self.user_id = user.id

    self.save!
  end


end
