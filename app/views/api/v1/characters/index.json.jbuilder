json.array! @characters do |character|
    json.extract! character, :name
end