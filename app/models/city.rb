# City model with pg_search config for the searching
class City < ApplicationRecord
  belongs_to :state
  include PgSearch::Model

  pg_search_scope :search_by_name,
    against: :name,
    associated_against: {
      state: :name
    },
    using: {
      tsearch: { prefix: true }
    }
end
