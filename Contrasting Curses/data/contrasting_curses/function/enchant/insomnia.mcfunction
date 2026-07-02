# triggered when sleeping in a bed with insomnia enchant
advancement revoke @s only contrasting_curses:insomnia_curse

execute store result score #insomnia_level contrasting_curses run data get entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."contrasting_curses:insomnia_curse"
execute if score #insomnia_level contrasting_curses matches ..1 unless predicate {condition:"random_chance", chance: 0.3} run return 0
execute if score #insomnia_level contrasting_curses matches 2 unless predicate {condition:"random_chance", chance: 0.5} run return 0
execute if score #insomnia_level contrasting_curses matches 3 unless predicate {condition:"random_chance", chance: 0.7} run return 0
execute if score #insomnia_level contrasting_curses matches 4.. unless predicate {condition:"random_chance", chance: 0.9} run return 0


# apply effects
execute store result score #insomnia_roll contrasting_curses run random value 0..7

execute if score #insomnia_roll contrasting_curses matches 0 run tag @s add contrasting_curses.insomnia_nightmare
execute if score #insomnia_roll contrasting_curses matches 0 run schedule function contrasting_curses:enchant/insomnia_nightmare 50t replace
execute if score #insomnia_roll contrasting_curses matches 1 run summon phantom ~ ~1.5 ~
execute if score #insomnia_roll contrasting_curses matches 2 facing entity @s feet run summon evoker_fangs ^ ^-0.5 ^-0.5
execute if score #insomnia_roll contrasting_curses matches 3 run summon endermite ~ ~-0.5 ~
execute if score #insomnia_roll contrasting_curses matches 4 run summon silverfish ~ ~-0.5 ~
execute if score #insomnia_roll contrasting_curses matches 5..7 run function contrasting_curses:enchant/insomnia_spawn_tall