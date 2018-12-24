# Desc: Template for each warp
#
# Called by: nothing
execute if score @s warpcooldown matches 1.. run function main:cooldown
execute if score @s warpcooldown matches 0 run function main:tp
