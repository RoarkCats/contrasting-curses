execute as @a[tag=!contrasting_curses.tagged] run function contrasting_curses:tag_player

# Any-borne Curses
execute as @a[tag=contrasting_curses.abyssborne,predicate=!contrasting_curses:enchant/abyssborne_equipped] at @s run function contrasting_curses:enchant/abyssborne_tag
execute as @a[tag=contrasting_curses.astralborne,predicate=!contrasting_curses:enchant/astralborne_equipped] at @s run function contrasting_curses:enchant/astralborne_tag
execute as @a[predicate=contrasting_curses:enchant/abyssborne_equipped] at @s run function contrasting_curses:enchant/abyssborne_tag
execute as @a[predicate=contrasting_curses:enchant/astralborne_equipped] at @s run function contrasting_curses:enchant/astralborne_tag

# Burden Curse
execute as @a[tag=contrasting_curses.burden,predicate=!contrasting_curses:enchant/burden_equipped] at @s run function contrasting_curses:enchant/burden
execute as @a[predicate=contrasting_curses:enchant/burden_equipped] at @s run function contrasting_curses:enchant/burden



schedule function contrasting_curses:main_20 20t replace