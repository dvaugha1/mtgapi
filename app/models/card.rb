class Card < ActiveRecord::Base

validates :name, presence: :true, uniqueness: :true
validates :type, presence: :true
validates :edition, presence: :true
validates :rarity, presence: :true


	def json_cards
    self.cards.map do |card|
      { id: card.id, name: card.name, type: card.type,
      	edition: card.edition, rarity: card.rarity, artist: card.artist,
      	rules: card.rule, flavor_text: card.flavor, mana: card.mana,
      	attack: card.attack, toughness: card.toughness }
    end
  end
end
