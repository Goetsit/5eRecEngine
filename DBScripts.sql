--Create Main Class Nodes

CREATE (barbarian:Class {name: 'Barbarian', hit_dice: '1d12', primary_ability: 'Strength', armor_proficiencies: ['Light Armor', 'Medium Armor', 'Shields'], weapon_proficiencies: ['Simple Weapons', 'Martial Weapons'], saving_throws: ['Strength', 'Constitution']})

CREATE (bard:Class {name: 'Bard', hit_dice: '1d8', primary_ability: 'Charisma', armor_proficiencies: ['Light Armor'], weapon_proficiencies: ['Simple Weapons', 'Hand Crossbows', 'Longswords', 'Rapiers', 'Shortswords'], saving_throws: ['Dexterity', 'Charisma']})

CREATE (cleric:Class {name: 'Cleric', hit_dice: '1d8', primary_ability: 'Wisdom', armor_proficiencies: ['Light Armor', 'Medium Armor', 'Shields'], weapon_proficiencies: ['Simple Weapons'], saving_throws: ['Wisdom', 'Charisma']})

CREATE (druid:Class {name: 'Druid', hit_dice: '1d8', primary_ability: 'Wisdom', armor_proficiencies: ['Light Armor', 'Medium Armor (Nonmetal)', 'Shields (Nonmetal)', 'Druids will not wear armor or use shields made of metal.'], weapon_proficiencies: ['Clubs', 'Daggers', 'Darts', 'Javelins', 'Maces', 'Quarterstaffs', 'Scimitars', 'Sickles', 'Slings', 'Spears'], saving_throws: ['Intelligence', 'Wisdom']})

CREATE (fighter:Class {name: 'Fighter', hit_dice: '1d10', primary_ability: 'Strength or Dexterity', armor_proficiencies: ['All Armor', 'Shields'], weapon_proficiencies: ['Simple Weapons', 'Martial Weapons'], saving_throws: ['Strength', 'Constitution']})

CREATE (monk:Class {name: 'Monk', hit_dice: '1d8', primary_ability: 'Dexterity and Wisdom', armor_proficiencies: ['None'], weapon_proficiencies: ['Simple Weapons', 'Shortswords'], saving_throws: ['Strength', 'Dexterity']})

CREATE (paladin:Class {name: 'Paladin', hit_dice: '1d10', primary_ability: 'Strength and Charisma', armor_proficiencies: ['All Armor', 'Shields'], weapon_proficiencies: ['Simple Weapons', 'Martial Weapons'], saving_throws: ['Wisdom', 'Charisma']})

CREATE (ranger:Class {name: 'Ranger', hit_dice: '1d10', primary_ability: 'Dexterity and Wisdom', armor_proficiencies: ['Light Armor', 'Medium Armor', 'Shields'], weapon_proficiencies: ['Simple Weapons', 'Martial Weapons'], saving_throws: ['Strength', 'Dexterity']})

CREATE (rogue:Class {name: 'Rogue', hit_dice: '1d8', primary_ability: 'Dexterity', armor_proficiencies: ['Light Armor'], weapon_proficiencies: ['Simple Weapons', 'Hand Crossbows', 'Longswords', 'Rapiers', 'Shortswords'], saving_throws: ['Dexterity', 'Intelligence']})

CREATE (sorcerer:Class {name: 'Sorcerer', hit_dice: '1d6', primary_ability: 'Charisma', armor_proficiencies: ['None'], weapon_proficiencies: ['Daggers', 'Darts', 'Slings', 'Quarterstaffs', 'Light Crossbows'], saving_throws: ['Constitution', 'Charisma']})

CREATE (warlock:Class {name: 'Warlock', hit_dice: '1d8', primary_ability: 'Charisma', armor_proficiencies: ['Light Armor'], weapon_proficiencies: ['Simple Weapons'], saving_throws: ['Wisdom', 'Charisma']})

CREATE (wizard:Class {name: 'Wizard', hit_dice: '1d6', primary_ability: 'Intelligence', armor_proficiencies: ['None'], weapon_proficiencies: ['Daggers', 'Darts', 'Slings', 'Quarterstaffs', 'Light Crossbows'], saving_throws: ['Intelligence', 'Wisdom']})

--Create Simple Weapon Nodes

CREATE (club:Weapon:Simple:Melee {name: 'Club', type: 'Simple Weapon', category: 'Equipment'})

CREATE (dagger:Weapon:Simple:Melee {name: 'Dagger', type: 'Simple Weapon', category: 'Equipment'})

CREATE (greatclub:Weapon:Simple:Melee {name: 'Greatclub', type: 'Simple Weapon', category: 'Equipment'})

CREATE (handaxe:Weapon:Simple:Melee {name: 'Handaxe', type: 'Simple Weapon', category: 'Equipment'})

CREATE (javelin:Weapon:Simple:Melee {name: 'Javelin', type: 'Simple Weapon', category: 'Equipment'})

CREATE (lighthammer:Weapon:Simple:Melee {name: 'Light hammer', type: 'Simple Weapon', category: 'Equipment'})

CREATE (mace:Weapon:Simple:Melee {name: 'Mace', type: 'Simple Weapon', category: 'Equipment'})

CREATE (quarterstaff:Weapon:Simple:Melee {name: 'Quarterstaff', type: 'Simple Weapon', category: 'Equipment'})

CREATE (sickle:Weapon:Simple:Melee {name: 'Sickle', type: 'Simple Weapon', category: 'Equipment'})

CREATE (spear:Weapon:Simple:Melee {name: 'Spear', type: 'Simple Weapon', category: 'Equipment'})

CREATE (lightcrossbow:Weapon:Simple:Ranged {name: 'Crossbow, light', type: 'Simple Weapon', category: 'Equipment'})

CREATE (dart:Weapon:Simple:Ranged {name: 'Dart', type: 'Simple Weapon', category: 'Equipment'})

CREATE (shortbow:Weapon:Simple:Ranged {name: 'Shortbow', type: 'Simple Weapon', category: 'Equipment'})

CREATE (sling:Weapon:Simple:Ranged {name: 'Sling', type: 'Simple Weapon', category: 'Equipment'})


--Create Martial Weapon Nodes

CREATE (battleaxe:Weapon:Martial:Melee {name: 'Battleaxe', type: 'Martial Weapon', category: 'Equipment'})

CREATE (flail:Weapon:Martial:Melee {name: 'Flail', type: 'Martial Weapon', category: 'Equipment'})

CREATE (glaive:Weapon:Martial:Melee {name: 'Glaive', type: 'Martial Weapon', category: 'Equipment'})

CREATE (greataxe:Weapon:Martial:Melee {name: 'Greataxe', type: 'Martial Weapon', category: 'Equipment'})

CREATE (greatsword:Weapon:Martial:Melee {name: 'Greatsword', type: 'Martial Weapon', category: 'Equipment'})

CREATE (halberd:Weapon:Martial:Melee {name: 'Halberd', type: 'Martial Weapon', category: 'Equipment'})

CREATE (lance:Weapon:Martial:Melee {name: 'Lance', type: 'Martial Weapon', category: 'Equipment'})

CREATE (longsword:Weapon:Martial:Melee {name: 'Longsword', type: 'Martial Weapon', category: 'Equipment'})

CREATE (maul:Weapon:Martial:Melee {name: 'Maul', type: 'Martial Weapon', category: 'Equipment'})

CREATE (morningstar:Weapon:Martial:Melee {name: 'Morningstar', type: 'Martial Weapon', category: 'Equipment'})

CREATE (pike:Weapon:Martial:Melee {name: 'Pike', type: 'Martial Weapon', category: 'Equipment'})

CREATE (rapier:Weapon:Martial:Melee {name: 'Rapier', type: 'Martial Weapon', category: 'Equipment'})

CREATE (scimitar:Weapon:Martial:Melee {name: 'Scimitar', type: 'Martial Weapon', category: 'Equipment'})

CREATE (shortword:Weapon:Martial:Melee {name: 'Shortsword', type: 'Martial Weapon', category: 'Equipment'})

CREATE (trident:Weapon:Martial:Melee {name: 'Trident', type: 'Martial Weapon', category: 'Equipment'})

CREATE (warpick:Weapon:Martial:Melee {name: 'War pick', type: 'Martial Weapon', category: 'Equipment'})

CREATE (warhammer:Weapon:Martial:Melee {name: 'Warhammer', type: 'Martial Weapon', category: 'Equipment'})

CREATE (whip:Weapon:Martial:Melee {name: 'Whip', type: 'Martial Weapon', category: 'Equipment'})

CREATE (blowgun:Weapon:Martial:Ranged {name: 'Blowgun', type: 'Martial Weapon', category: 'Equipment'})

CREATE (handcrossbow:Weapon:Martial:Ranged {name: 'Crossbow, hand', type: 'Martial Weapon', category: 'Equipment'})

CREATE (heavycrossbow:Weapon:Martial:Ranged {name: 'Crossbow, heavy', type: 'Martial Weapon', category: 'Equipment'})

CREATE (longbow:Weapon:Martial:Ranged {name: 'Longbow', type: 'Martial Weapon', category: 'Equipment'})

CREATE (net:Weapon:Martial:Ranged {name: 'Net', type: 'Martial Weapon', category: 'Equipment'})


--create relationships between classes and weapons

MATCH (c:Class {name: 'Barbarian'})
MATCH (w:Weapon)
WHERE w.name IN ['Club', 'Dagger', 'Greatclub', 'Handaxe', 'Javelin', 'Light hammer', 'Mace', 'Quarterstaff', 'Sickle', 'Spear']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Bard'})
MATCH (w:Weapon)
WHERE w.name IN ['Club', 'Dagger', 'Greatclub', 'Handaxe', 'Javelin', 'Light hammer', 'Mace', 'Quarterstaff', 'Sickle', 'Spear', 'Crossbow, light', 'Dart', 'Shortbow', 'Sling']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Cleric'})
MATCH (w:Weapon)
WHERE w.name IN ['Club', 'Dagger', 'Greatclub', 'Handaxe', 'Javelin', 'Light hammer', 'Mace', 'Quarterstaff', 'Sickle', 'Spear']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Druid'})
MATCH (w:Weapon)
WHERE w.name IN ['Club', 'Dagger', 'Greatclub', 'Handaxe', 'Javelin', 'Light hammer', 'Mace', 'Quarterstaff', 'Sickle', 'Spear']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Fighter'})
MATCH (w:Weapon)
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Monk'})
MATCH (w:Weapon)
WHERE w.name IN ['Club', 'Dagger', 'Greatclub', 'Handaxe', 'Javelin', 'Light hammer', 'Mace', 'Quarterstaff', 'Sickle', 'Spear', 'Shortsword']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Paladin'})
MATCH (w:Weapon)
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Ranger'})
MATCH (w:Weapon)
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Rogue'})
MATCH (w:Weapon)
WHERE w.name IN ['Club', 'Dagger', 'Greatclub', 'Handaxe', 'Javelin', 'Light hammer', 'Mace', 'Quarterstaff', 'Sickle', 'Spear', 'Crossbow, light', 'Shortbow', 'Sling']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Sorcerer'})
MATCH (w:Weapon)
WHERE w.name IN ['Dagger', 'Dart', 'Quarterstaff', 'Light crossbow', 'Sling']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Warlock'})
MATCH (w:Weapon)
WHERE w.name IN ['Club', 'Dagger', 'Greatclub', 'Handaxe', 'Javelin', 'Light hammer', 'Mace', 'Quarterstaff', 'Sickle', 'Spear']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)

MATCH (c:Class {name: 'Wizard'})
MATCH (w:Weapon)
WHERE w.name IN ['Dagger', 'Dart', 'Quarterstaff', 'Light crossbow', 'Sling']
CREATE (c)-[:IS_WEAPON_PROFICIENCY]->(w)
