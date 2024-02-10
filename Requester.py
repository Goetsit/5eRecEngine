import requests
import WeaponClassFilter
import json
from neo4j import GraphDatabase
import Connections


# request magic items, send through rarity and item_type


def get_magic_items():
    url = "https://api.open5e.com/v1/magicitems/?limit=6000"
    response = requests.get(url)
    if response.status_code == 200:
        magic_items = response.json()["results"]
        return magic_items
    else:
        print("Failed to fetch magic items:", response.status_code)
        return None


# filter based on rarity, type, and keywords


def filter_magic_items(magic_items, proficient_items, rarity=None, item_type=None, keyword=None):
    filtered_items = magic_items
    if rarity:
        filtered_items = [item for item in filtered_items if item["rarity"].lower() == rarity.lower()]
    if item_type:
        filtered_items = [item for item in filtered_items if item["type"].lower() == item_type.lower()]
    if keyword:
        filtered_items = [item for item in filtered_items if keyword.lower() in item["desc"].lower()]

    # filtered_items = [item for item in filtered_items if proficient_items in item["desc"].lower()]
    # filtered_items = [item for item in filtered_items if proficient_items in item["name"].lower()]
    for item in filtered_items:
        for word in proficient_items:
            if word.lower() in item['name'].lower() or word.lower() in item['desc'].lower():
                filtered_items = filtered_items
                print("lil filt", filtered_items)
                return filtered_items

# Clean it up


def sort_magic_items(magic_items):
    sorted_items = sorted(magic_items, key=lambda x: (x["rarity"], x["name"]))
    return sorted_items


# Provide items

def print_magic_items(magic_items):
    if magic_items:
        for item in magic_items:
            print(f"{item['name']} - Rarity: {item['rarity']}, Type: {item['type']}")
    else:
        print("No magic items found.")


def magic_item_rec():
    magic_items = get_magic_items()
    if magic_items:
        rarity = input("Enter the rarity (common, uncommon, rare, very rare, legendary) or press Enter to skip: ").lower()
        item_type = input("Enter the item type (weapon, wondrous item, ring, etc.) or press Enter to skip: ").lower()
        keyword = input("Enter a keyword to search in the description or press Enter to skip: ").lower()
        character_class = input("What is your main class (Monk, Rogue, Wizard etc.): ").title()

        if character_class:
             proficient_weapons = WeaponClassFilter.get_proficient_weapons(character_class)
        if rarity or item_type or keyword:
            filtered_items = filter_magic_items(magic_items, proficient_weapons, rarity, item_type, keyword)
            sorted_items = sort_magic_items(filtered_items)
            print("\nMagic Items:")
            print_magic_items(sorted_items)
        else:
            print("No filters provided. Showing all magic items:")
            print_magic_items(sort_magic_items(magic_items))


magic_item_rec()


