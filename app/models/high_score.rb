class HighScore < ApplicationRecord
    belongs_to :user
    belongs_to :game
    # @@USABLE = []
    # def self.usable
    #   @all = HighScore.all
    #   @all.each do |score|
    #     @@USABLE.push(score.user.name, score.game.game_name)
    #   end
    #   return @@USABLE
    # end
end
