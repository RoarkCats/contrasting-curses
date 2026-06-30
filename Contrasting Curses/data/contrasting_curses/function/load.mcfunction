tellraw @a {"text":"Thank you for downloading Contrasting Curses by RoarkCats!","color":"gold"}

scoreboard objectives add contrasting_curses dummy
scoreboard objectives add contrasting_curses.link dummy
scoreboard objectives add contrasting_curses.vuln dummy

scoreboard players set #5 contrasting_curses 5
scoreboard players set #-5 contrasting_curses -5
scoreboard players set #-10 contrasting_curses -10

execute unless score #counter contrasting_curses.link matches -2147483648..2147483647 run scoreboard players set #counter contrasting_curses.link 1

## Enchantable Item Tags (reference)
# minecraft:enchantable/vanishing
# minecraft:enchantable/durability
# minecraft:enchantable/equippable
# minecraft:enchantable/armor
# minecraft:enchantable/head_armor
# minecraft:enchantable/chest_armor
# minecraft:enchantable/leg_armor
# minecraft:enchantable/foot_armor
# minecraft:enchantable/weapon
# minecraft:enchantable/sharp_weapon
# minecraft:enchantable/sword
# minecraft:enchantable/fire_aspect
# minecraft:enchantable/trident
# minecraft:enchantable/mace
# minecraft:enchantable/mining
# minecraft:enchantable/mining_loot
# minecraft:enchantable/bow
# minecraft:enchantable/crossbow
# minecraft:enchantable/fishing

schedule function contrasting_curses:main_20 3t replace