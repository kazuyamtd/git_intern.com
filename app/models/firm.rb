class Firm < ActiveRecord::Base
    has_many :reviews
    belongs_to :genre
    has_many :jobs
end
