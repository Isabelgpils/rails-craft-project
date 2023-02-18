class Pattern < ApplicationRecord
    has_one_attached :image
    # belongs_to :user
    has_and_belongs_to_many :metallics
    has_and_belongs_to_many :beads
end
