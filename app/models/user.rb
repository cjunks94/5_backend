class User < ApplicationRecord
    has_many :high_scores
    has_many :games, through: :high_scores
end
