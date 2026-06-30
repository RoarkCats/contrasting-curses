# run as player at block when ignition cursed tool hits block

# kill prior ignition marker(s) [note: using tag to avoid spectator interference]
tag @s add contrasting_curses.this
execute as @e[type=marker,tag=contrasting_curses.ignition,distance=..256] if score @s contrasting_curses.link = @p[tag=contrasting_curses.this] contrasting_curses.link run kill @s
tag @s remove contrasting_curses.this

# summon new ignition marker
summon marker ~ ~ ~ {Tags:["contrasting_curses.ignition","contrasting_curses.new"]}
scoreboard players operation @n[type=marker,tag=contrasting_curses.new] contrasting_curses.link = @s contrasting_curses.link
execute store result entity @n[type=marker,tag=contrasting_curses.new] data.level int 1 run data get entity @s SelectedItem.components."minecraft:enchantments".levels."contrasting_curses:ignition_curse"
tag @n[type=marker,tag=contrasting_curses.new] remove contrasting_curses.new









# I thought of a lotta alternate names for this one lmao:
#
# - Curse of Void Miner
# - Curse of Waste
# - Curse of Depletion
# - Curse of Deprivation
# - Curse of Disappearance
# - Curse of Drops
# 	- Curse of Loss
# 	- Curse of Ruination
# 	- Curse of Deficiency
# 	- Curse of Recklessness
# 	- Curse of Obliteration
# - Curse of Enflamed
# - Curse of Ignition
# - Curse of Charring
# - Curse of Singeing