# triggered when a fish bites with the snapping curse
advancement revoke @s only contrasting_curses:snapping_curse

# get curse level
scoreboard players set #snapping_level contrasting_curses 0
execute store result score #snapping_level contrasting_curses run data get entity @s SelectedItem.components."minecraft:enchantments".levels."contrasting_curses:snapping_curse"
execute if score #snapping_level contrasting_curses matches 0 store result score #snapping_level contrasting_curses run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments".levels."contrasting_curses:snapping_curse"

execute unless predicate contrasting_curses:enchant/snapping run return 0

# locate bobber
tag @s add contrasting_curses.this
execute as @e[type=fishing_bobber] at @s on origin if entity @s[tag=contrasting_curses.this] run summon marker ~ ~ ~ {Tags:["contrasting_curses.snapping"]}
tag @s remove contrasting_curses.this

# schedule effects (item doesn't yet exist)
schedule function contrasting_curses:enchant/snapping_bobber 1t replace
playsound item.crossbow.shoot player @a ~ ~ ~ 1 1.6
execute at @n[type=marker,tag=contrasting_curses.snapping] run playsound entity.player.splash.high_speed neutral @a ~ ~ ~ 1 .7
execute at @n[type=marker,tag=contrasting_curses.snapping] run particle bubble_pop ~ ~.5 ~ .3 .3 .3 .05 12