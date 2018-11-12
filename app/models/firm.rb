class Firm < ActiveRecord::Base
    has_many :reviews
    belongs_to :genre
end
