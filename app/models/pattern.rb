class Pattern < ApplicationRecord
    has_one_attached :image
    # belongs_to :user
    has_and_belongs_to_many :metallics
    has_and_belongs_to_many :beads
    has_and_belongs_to_many :silks
    has_and_belongs_to_many :dmcs
    default_scope {order(:brand, :number) }
end
