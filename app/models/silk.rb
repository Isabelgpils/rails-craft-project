class Silk < ApplicationRecord
    has_one_attached :image
    has_and_belongs_to_many :patterns
    default_scope {order(:brand, :thread_type, :number) }
end
