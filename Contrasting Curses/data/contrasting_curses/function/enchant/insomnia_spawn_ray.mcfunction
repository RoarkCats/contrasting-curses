# check valid spawn locations for 2-tall monsters in facing direction
# particle end_rod ~ ~ ~ 0 0 0 0 0 force
# particle glow ^ ^ ^.2 0 0 0 0 0 force

# Filter out invalid spawn positions
execute unless block ~ ~ ~ #contrasting_curses:valid_spawn run return run kill @s
execute if entity @p[tag=contrasting_curses.this,distance=..0.3] run return 1

# Ray step
scoreboard players remove #insomnia_ray contrasting_curses 1
execute unless score #insomnia_ray contrasting_curses matches ..0 positioned ^ ^ ^0.5 run function contrasting_curses:enchant/insomnia_spawn_ray