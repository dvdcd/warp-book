# Desc: Runs when a player needs a update
#
# Called by: #minecraft:tick
execute if score @s warpupdate matches 0 run tellraw @s ["",{"text":"You have summoned the Wanderer's Tome. There is new knowledge to behold.","color":"green"}]
execute if score @s warpupdate matches 1 run tellraw @s ["",{"text":"You hold the Wanderer's Tome. There can be no other.","color":"red"}]
execute at @s if score @s warpupdate matches 1 run playsound minecraft:block.beacon.deactivate voice @s ~ ~ ~ 100
execute at @s if score @s warpupdate matches 0 run playsound minecraft:entity.evoker.prepare_summon voice @s ~ ~ ~ 100
execute if score @s warpupdate matches 0 run function main:givebook
scoreboard players set @s warpupdatet 0
