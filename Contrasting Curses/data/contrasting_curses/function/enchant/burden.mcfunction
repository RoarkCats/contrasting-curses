# run on location changed (including equip/unequip armor) to dynamically set attribute modifiers
# all this bc enchants are STUPID and using regular attribute effect you can't do conditions but it stacks, yet with location changed with conditions it doesn't stack >:( 


# Reset attributes
tag @s remove contrasting_curses.burden

attribute @s generic.movement_speed modifier remove contrasting_curses:burden_generic.movement_speed

# Enchant levels total multiplier (current scale 1x)
execute store result score #mult contrasting_curses if items entity @s armor.* *[enchantments~[{enchantments:"contrasting_curses:burden_curse"}]]
execute if score #mult contrasting_curses matches 0 run return 0
# support for multi-leveled versions & include base ver more effective (current scale 1x -> 2x)
execute store result score #mult_add contrasting_curses run data get entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."contrasting_curses:burden_curse"
scoreboard players operation #mult contrasting_curses += #mult_add contrasting_curses
execute store result score #mult_add contrasting_curses run data get entity @s Inventory[{Slot:102b}].components."minecraft:enchantments".levels."contrasting_curses:burden_curse"
scoreboard players operation #mult contrasting_curses += #mult_add contrasting_curses
execute store result score #mult_add contrasting_curses run data get entity @s Inventory[{Slot:101b}].components."minecraft:enchantments".levels."contrasting_curses:burden_curse"
scoreboard players operation #mult contrasting_curses += #mult_add contrasting_curses
execute store result score #mult_add contrasting_curses run data get entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."contrasting_curses:burden_curse"
scoreboard players operation #mult contrasting_curses += #mult_add contrasting_curses

# Get inventory fill value (new scale 100x)
tag @s add contrasting_curses.burden

execute store result score #slots contrasting_curses if data entity @s Inventory[]
scoreboard players set #value contrasting_curses 10
scoreboard players operation #value contrasting_curses -= #slots contrasting_curses

# Get attribute values and assign (scale 100x * 2x = 200x scale)
data merge storage contrasting_curses:attr {curse:"burden", attribute:"generic.movement_speed", mode:"add_multiplied_base"}
scoreboard players operation #value contrasting_curses *= #mult contrasting_curses
execute store result storage contrasting_curses:attr value double 0.005 run scoreboard players get #value contrasting_curses
function contrasting_curses:enchant/attribute with storage contrasting_curses:attr


# so this can range from +10% speed to -30% speed per base level