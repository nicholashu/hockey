class Group < ActiveRecord::Base
    has_many :listings, dependent: :nullify
end