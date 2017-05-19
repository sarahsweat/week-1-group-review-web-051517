## QUESTION 1



pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
      #pokemon[0]["abilities"][0]["ability"]["url"]
# How would you return the first pokemon with base experience over 40?
      #Iterate through the array, evaluating each hash to find the first instance where the experience was over 40(using array method find)
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
      #Iterate through the array, evaluating each hash to find the every instance where the experience was over 40(using array method select)
# How would you return an array of all of the pokemon's names?
      #Iterate through the hashes and shovel in the name value into an empty array
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
      # Assuming none exist == false, Start at false and if Array#any? returns true that its weight is > 60 than we know that it exists.
      # Whatever method you use should return true if there are any such pokemon, false if not.
