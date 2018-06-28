require 'pry'
class Pokemon
<<<<<<< HEAD
  attr_accessor :id, :name, :type, :hp, :db
  
  def initialize(id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db
  end 
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name,type) VALUES (?,?)", name, type)
  end
  
  def self.find(id, db, hp: nil)
    pokemon_attributes = db.execute("SELECT * FROM pokemon WHERE pokemon.id = (?)", id).flatten
    pokemon = self.new(id: pokemon_attributes[0], name: pokemon_attributes[1], type: pokemon_attributes[2], hp: pokemon_attributes[3], db: db)
  end 
  
  def alter_hp(hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", hp, self.id)
=======
  attr_accessor :id, :name, :type, :db, :hp
  
  def initialize(id:, name:, type:, db:, hp:60)
    @id = id
    @name = name
    @type = type
    @db = db
  end 
  
  def self.save(name:, type:, db:, hp:)
    db.execute("INSERT INTO pokemon (name,type) VALUES (?,?)", name, type)
  end
  
  def self.find(id, db)
    pokemon_attributes = db.execute("SELECT * FROM pokemon WHERE pokemon.id = (?)", id)
    pokemon = self.new(id: pokemon_attributes[0][0], name: pokemon_attributes[0][1], type: pokemon_attributes[0][2], db: db)
    pokemon
>>>>>>> ad28069e4bff828affd86591b47ff79ab5d1be03
  end 
end
