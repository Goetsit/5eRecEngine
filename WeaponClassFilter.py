
from neo4j import GraphDatabase
import Connections



# Function to query Neo4j database for weapons proficient by a class

def get_proficient_weapons(class_name):
    # Cypher query to retrieve weapons proficient by the given class
    print("class name", class_name)
    class_name = class_name.title()
    query = (
     "MATCH (c:Class {name:$class_name}) - [:IS_WEAPON_PROFICIENCY]->(w:Weapon) RETURN w.name AS name"
    )
    print("query", query)
    with driver.session() as session:
        result = session.run(query, class_name=class_name)
        weapons = [record["name"] for record in result]
    print("weapons", weapons)
    return weapons


# Function to filter magic items based on weapons proficient by a class
# def filter_magic_items_by_weapons(magic_items, proficient_weapons):
#     filtered_items = []
#     for item in magic_items:
#         # Check if any proficient weapon names or descriptions match
#         if any(weapon.lower() in item["name"].lower() or weapon.lower() in item["desc"].lower() for weapon in proficient_weapons):
#             filtered_items.append(item)
#     return filtered_items

# Function to retrieve magic items from the Open5e API
# def get_magic_items():
#     url = "https://api.open5e.com/magicitems/"
#     response = requests.get(url)
#     if response.status_code == 200:
#         magic_items = response.json()["results"]
#         return magic_items
#     else:
#         print("Failed to fetch magic items:", response.status_code)
#         return None
# Main function
# def main():
#     classname = input("Enter the main class (e.g., 'monk'): ").capitalize()
#
#     # Query Neo4j database for weapons proficient by the given class
#     proficientweapons = getproficientweapons(class_name)
#
#     if proficient_weapons:
#         print(f"\n{class_name} is proficient in the following weapons:", proficient_weapons)
#
#         # Get magic items from the Open5e API
#         magic_items = get_magic_items()
#
#         if magic_items:
#             # Filter magic items based on weapons proficient by the class
#             filtered_items = filter_magic_items_by_weapons(magic_items, proficient_weapons)
#
#             print("\nMagic Items relevant to proficient weapons:")
#             for item in filtered_items:
#                 print(f"{item['name']} - {item['desc']}")
#         else:
#             print("No magic items found.")
#     else:
#         print(f"No proficient weapons found for {class_name}.")

# Neo4j database connection


uri = "bolt://localhost:7687"
user = "neo4j"
password = "45%Fc#2ui%6"

driver = GraphDatabase.driver(uri, auth=(user, password))


# if __name == "__main":


#     main()


