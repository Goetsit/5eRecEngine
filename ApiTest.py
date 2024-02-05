import requests
import json
from neo4j import GraphDatabase
import Connections
import JSON_Loader


param_rarity = input("Rarity? (uncommon, rare, very rare, etc) ").title()
param_type = input("Type? (Weapon, Wondrous Item, etc) ").title()
param_class = input("What is your class? ").title()
param_keywords = input("Keywords: example Dagger, Venom. Separate Multiple words with a comma. " )

print(param_rarity, param_type, param_class, param_keywords)

parameters = {
    "rarity": param_rarity,
    "type": param_type
}
root = requests.get("https://api.open5e.com/v1/magicitems", params=parameters)
keywords_root = requests.get("https://api.dictionaryapi.dev/api/v2/entries/en/<word>", params=param_keywords)

keywords_list = param_keywords.split(',')
print(keywords_list[0])

item_data = JSON_Loader.jprint(root.json())
magic_items = json.loads(item_data)

word_data = JSON_Loader.jprint(keywords_root.json())
word_load = json.loads(word_data)

print(magic_items)

for item in magic_items["results"]:
    print(item["desc"])

for word in  word_load["results"]:
   print("Synonyms")
















