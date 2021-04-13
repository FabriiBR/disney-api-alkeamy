json.array! @films do |film|
    json.extract! film, :title, :release_date
end