json.extract! animal, :id, :species_cd, :scientific_name, :common_name, :created_at, :updated_at
json.url animal_url(animal, format: :json)
