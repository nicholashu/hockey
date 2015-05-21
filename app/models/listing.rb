class Listing < ActiveRecord::Base
  belongs_to :user
  validates :venue, presence: true
  validates :gamedate, presence: true
  validates :gametime, presence: true

  #adds userid to each listing
  def set_user!(user)
    self.created_by = user.id
    self.save!
  end



end
