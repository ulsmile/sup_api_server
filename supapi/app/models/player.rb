class Player
  include Mongoid::Document
  include Mongoid::Timestamps
  field :player_id
  field :_id, type: String, default: -> { player_id }
  field :line_id
  field :name, type: String
  field :gender
  field :hp_permission, type: Boolean
  field :ranking_permission, type: Boolean
  field :image
  field :content, type: String
  field :join_year
  field :regitry_status,type: Boolean
  field :regitry_hash, type: String
  embeds_many :records 
 
  
end
