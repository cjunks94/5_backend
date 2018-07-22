class Game < ApplicationRecord
    has_many :high_scores
    has_many :users, through: :high_scores
end
