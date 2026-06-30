tag @s add contrasting_curses.abyssborne

data modify storage contrasting_curses:attr curse set value "abyssborne"
scoreboard players set #any_borne contrasting_curses 0
execute store result score #return contrasting_curses run function contrasting_curses:enchant/any_borne with storage contrasting_curses:attr

execute if score #return contrasting_curses matches 0 run tag @s remove contrasting_curses.abyssborne