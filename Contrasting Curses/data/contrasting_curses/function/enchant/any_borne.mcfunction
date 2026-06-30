# run on location changed (including equip/unequip armor) to dynamically set attribute modifiers
# all this bc enchants are STUPID and using regular attribute effect you can't do conditions but it stacks, yet with location changed with conditions it doesn't stack >:( 


# Reset attributes
$attribute @s generic.attack_damage modifier remove contrasting_curses:$(curse)_generic.attack_damage
$attribute @s generic.armor modifier remove contrasting_curses:$(curse)_generic.armor
$attribute @s generic.movement_speed modifier remove contrasting_curses:$(curse)_generic.movement_speed
$attribute @s player.block_break_speed modifier remove contrasting_curses:$(curse)_player.block_break_speed

# Enchant levels total multiplier (current scale 1x)
$execute store result score #mult contrasting_curses if items entity @s armor.* *[enchantments~[{enchantments:"contrasting_curses:$(curse)_curse"}]]
execute if score #mult contrasting_curses matches 0 run return 0
# support for multi-leveled versions & include base ver more effective (current scale 1x -> 2x)
$execute store result score #mult_add contrasting_curses run data get entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."contrasting_curses:$(curse)_curse"
scoreboard players operation #mult contrasting_curses += #mult_add contrasting_curses
$execute store result score #mult_add contrasting_curses run data get entity @s Inventory[{Slot:102b}].components."minecraft:enchantments".levels."contrasting_curses:$(curse)_curse"
scoreboard players operation #mult contrasting_curses += #mult_add contrasting_curses
$execute store result score #mult_add contrasting_curses run data get entity @s Inventory[{Slot:101b}].components."minecraft:enchantments".levels."contrasting_curses:$(curse)_curse"
scoreboard players operation #mult contrasting_curses += #mult_add contrasting_curses
$execute store result score #mult_add contrasting_curses run data get entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."contrasting_curses:$(curse)_curse"
scoreboard players operation #mult contrasting_curses += #mult_add contrasting_curses

# Apply multiplier base (current scale 2x -> 10x scale)
execute if score #any_borne contrasting_curses matches 0 if predicate contrasting_curses:enchant/any_borne_low run scoreboard players operation #mult contrasting_curses *= #5 contrasting_curses
execute if score #any_borne contrasting_curses matches 1 if predicate contrasting_curses:enchant/any_borne_high run scoreboard players operation #mult contrasting_curses *= #5 contrasting_curses
execute if predicate contrasting_curses:enchant/any_borne_mid run scoreboard players operation #mult contrasting_curses *= #-5 contrasting_curses
execute if score #any_borne contrasting_curses matches 0 if predicate contrasting_curses:enchant/any_borne_high run scoreboard players operation #mult contrasting_curses *= #-10 contrasting_curses
execute if score #any_borne contrasting_curses matches 1 if predicate contrasting_curses:enchant/any_borne_low run scoreboard players operation #mult contrasting_curses *= #-10 contrasting_curses

# Get attribute values and assign (new scale 100x * 10x scale = 1000x scale)
data modify storage contrasting_curses:attr attribute set value "generic.attack_damage"
data modify storage contrasting_curses:attr mode set value "add_multiplied_total"
scoreboard players set #value contrasting_curses 5
scoreboard players operation #value contrasting_curses *= #mult contrasting_curses
execute store result storage contrasting_curses:attr value double 0.001 run scoreboard players get #value contrasting_curses
function contrasting_curses:enchant/attribute with storage contrasting_curses:attr

data modify storage contrasting_curses:attr attribute set value "generic.armor"
data modify storage contrasting_curses:attr mode set value "add_value"
scoreboard players set #value contrasting_curses 100
scoreboard players operation #value contrasting_curses *= #mult contrasting_curses
execute store result storage contrasting_curses:attr value double 0.001 run scoreboard players get #value contrasting_curses
function contrasting_curses:enchant/attribute with storage contrasting_curses:attr

data modify storage contrasting_curses:attr attribute set value "generic.movement_speed"
data modify storage contrasting_curses:attr mode set value "add_multiplied_base"
scoreboard players set #value contrasting_curses 5
scoreboard players operation #value contrasting_curses *= #mult contrasting_curses
execute store result storage contrasting_curses:attr value double 0.001 run scoreboard players get #value contrasting_curses
function contrasting_curses:enchant/attribute with storage contrasting_curses:attr

data modify storage contrasting_curses:attr attribute set value "player.block_break_speed"
scoreboard players set #value contrasting_curses 10
scoreboard players operation #value contrasting_curses *= #mult contrasting_curses
execute store result storage contrasting_curses:attr value double 0.001 run scoreboard players get #value contrasting_curses
function contrasting_curses:enchant/attribute with storage contrasting_curses:attr


return 1

# {
# 	"type": "attribute", "attribute": "minecraft:generic.attack_damage", "id": "contrasting_curses:astralborne_attack_damage",
# 	"operation": "add_value", "amount": {"type": "linear","base": 0.5,"per_level_above_first": 0.25}
# },
# {
# 	"type": "attribute", "attribute": "minecraft:generic.armor", "id": "contrasting_curses:astralborne_armor",
# 	"operation": "add_value", "amount": {"type": "linear","base": 1,"per_level_above_first": 0.5}
# },
# {
# 	"type": "attribute", "attribute": "minecraft:generic.movement_speed", "id": "contrasting_curses:astralborne_movement_speed",
# 	"operation": "add_multiplied_base", "amount": {"type": "linear","base": 0.05,"per_level_above_first": 0.025}
# },
# {
# 	"type": "attribute", "attribute": "minecraft:player.block_break_speed", "id": "contrasting_curses:astralborne_block_break_speed",
# 	"operation": "add_multiplied_base", "amount": {"type": "linear","base": 0.1,"per_level_above_first": 0.05}
# }