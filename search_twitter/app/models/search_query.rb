class SearchQuery < ApplicationRecord
  validates_presence_of :query, :count
end
