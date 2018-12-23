# Desc: Anything timed runs from here
#
# Called by: #minecraft:tick

#Adds To the tick counter to time seconds
scoreboard players add #tick tick 1
scoreboard players enable @a warpbook
#Run the main warping command if a player has pushed the book button
execute as @a if score @s warpbook matches 1.. run function main:warp
# Every 1 second
execute if score #tick tick matches 1 run function main:second
execute if score #tick tick matches 21 run function main:second
execute if score #tick tick matches 41 run function main:second
execute if score #tick tick matches 61 run function main:second
execute if score #tick tick matches 81 run function main:second

execute if score #tick tick matches 100.. run scoreboard players set #tick tick 0
