json.dish do 
    json.id @dish.id
    json.name @dish.name
    json.cost @dish.cost
    json.image_url @dish.image_url
    json.description @dish.description
end
  