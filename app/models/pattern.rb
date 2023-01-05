class Pattern < ApplicationRecord
    has_many :metallics
    has_many :beads
    has_many :silks
end
