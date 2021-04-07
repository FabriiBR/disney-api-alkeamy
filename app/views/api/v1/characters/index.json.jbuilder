json.array! @characters do |character|
    json.extract! character, :id, :name, :age, :history, :weight
end