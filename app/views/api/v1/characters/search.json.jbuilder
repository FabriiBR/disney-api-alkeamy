json.extract! @character, :id, :name, :age, :history, :weight
json.films @character.films do |film|
    json.extract! film, :id, :title
  end