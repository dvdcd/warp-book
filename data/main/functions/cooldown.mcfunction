# Desc: Runs if cooldown is active on that player
#
# Called by: main:warp
tellraw @s ["",{"text":"Your head throbs as you attempt to concentrate on a location. You decide to wait ","color":"green"},{"score":{"name":"*","objective":"warpcooldown"},"color":"white"},{"text":" seconds before you use the Wanderer's Tome again.","color":"green"}]
execute at @s run playsound minecraft:block.beacon.deactivate voice @s ~ ~ ~ 100
