# Ignition Curse
execute as @e[type=marker,tag=contrasting_curses.ignition] at @s run function contrasting_curses:enchant/ignition_marker

# Vulnerability Curse
scoreboard players remove @a[scores={contrasting_curses.vuln=1..}] contrasting_curses.vuln 1