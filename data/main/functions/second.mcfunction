# Desc: Runs Once A Second
#
# Called by: #main:master
execute as @a if score @s warpcooldown matches 1.. run scoreboard players remove dvdcd warpcooldown 1
