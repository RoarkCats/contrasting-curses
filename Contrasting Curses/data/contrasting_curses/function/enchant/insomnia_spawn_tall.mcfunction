# check valid spawn locations for 2-tall monsters from player within bed
# yeah this function isn't super well optimized but not running often and would rather be in 1 file


#
#     xx  B  xx
#      xx B xx
#       xxxxx
#

# Set initial positions as shown above
execute facing entity @s feet run summon marker ^3 ^-0.5 ^-1 {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^4 ^-0.5 ^-1 {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^-3 ^-0.5 ^-1 {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^-4 ^-0.5 ^-1 {Tags:["contrasting_curses.insomnia_spawn"]}

execute facing entity @s feet run summon marker ^2 ^-0.5 ^ {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^3 ^-0.5 ^ {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^-2 ^-0.5 ^ {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^-3 ^-0.5 ^ {Tags:["contrasting_curses.insomnia_spawn"]}

execute facing entity @s feet run summon marker ^ ^-0.5 ^1 {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^1 ^-0.5 ^1 {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^2 ^-0.5 ^1 {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^-1 ^-0.5 ^1 {Tags:["contrasting_curses.insomnia_spawn"]}
execute facing entity @s feet run summon marker ^-2 ^-0.5 ^1 {Tags:["contrasting_curses.insomnia_spawn"]}

# Filter out invalid spawn positions
# check spawn space
scoreboard players set #insomnia_ray_start contrasting_curses 2
execute as @e[type=marker,tag=contrasting_curses.insomnia_spawn] at @s facing ~ ~-1 ~ positioned ~ ~1 ~ run function contrasting_curses:enchant/insomnia_spawn_ray_start
# check ground
execute as @e[type=marker,tag=contrasting_curses.insomnia_spawn] at @s if block ~ ~-1 ~ #contrasting_curses:valid_spawn if block ~ ~-2 ~ #contrasting_curses:valid_spawn run kill @s
# check walls (line of sight)
tag @s add contrasting_curses.this
scoreboard players set #insomnia_ray_start contrasting_curses 7
execute as @e[type=marker,tag=contrasting_curses.insomnia_spawn] at @s facing entity @p[tag=contrasting_curses.this] eyes run function contrasting_curses:enchant/insomnia_spawn_ray_start
tag @s remove contrasting_curses.this

# Select random spawn
# execute as @e[type=marker,tag=contrasting_curses.insomnia_spawn] at @s run particle happy_villager ~ ~.2 ~ 0 0 0 0 0 force
tag @e[type=marker,tag=contrasting_curses.insomnia_spawn,sort=random,limit=1] add contrasting_curses.insomnia_selected_spawn

# Spawn mob
execute store result score #insomnia_roll contrasting_curses run random value 0..4
execute if score #insomnia_roll contrasting_curses matches 0 at @n[type=marker,tag=contrasting_curses.insomnia_selected_spawn] run summon zombie
execute if score #insomnia_roll contrasting_curses matches 1 at @n[type=marker,tag=contrasting_curses.insomnia_selected_spawn] run summon skeleton
execute if score #insomnia_roll contrasting_curses matches 2 at @n[type=marker,tag=contrasting_curses.insomnia_selected_spawn] run summon husk
execute if score #insomnia_roll contrasting_curses matches 3 at @n[type=marker,tag=contrasting_curses.insomnia_selected_spawn] run summon stray
execute if score #insomnia_roll contrasting_curses matches 4 at @n[type=marker,tag=contrasting_curses.insomnia_selected_spawn] run summon bogged

kill @e[type=marker,tag=contrasting_curses.insomnia_spawn]