# Desc: Runs if cooldown is a-ok
#
# Called by: main:warp
#Do fancy effects and start cooldown timer
effect give @s minecraft:blindness 3 30 true
effect give @s minecraft:hunger 3 100 true
effect give @s minecraft:weakness 30 1 true
scoreboard players set @s warpcooldown 30
#Run the function that teleports the players to thair spot | Determaned by the amount of points they have on the scoreboard
#If you want to add another warp, you're in the right place.
#Step 1: Add a new line to the book with MinecraftJSON. You can find the import code in warpbook-pack/bookcode.txt
#Make the click event be running this command : /trigger warpbook set (Number) , with number being the number in the last command on this list plus 1.
#EX. /trigger warpbook set 11 because the last command is execute if score @s warpbook matches 10 run tp X Y Z
#After changing the book, export the MinecraftJSON code and save it to the bookcode file. Then replace the give command in main/givebook.mcfunction with the new give command
#Step 2: Copy this command "execute if score @s warpbook matches (number) run tp X Y Z" Replacing number to the same one you used in the trigger command, and the xyz with the coords.
#Then put this new command at the end of this list of commands, but before the BEFORE HERE comment
#Step 3: Save everything, then do /reload on the server.
#Step 4: to enable the autoupdate button, run /function main:resetupdate
#That's it! You're done!

#The crystal Ruins
#execute if score @s warpbook matches 1 run tp
#Townsend
execute if score @s warpbook matches 2 run tp @s 5156 83 5829
#Market
execute if score @s warpbook matches 3 run tp @s 318 131 15527
#Shadowfall Arena
execute if score @s warpbook matches 4 run tp @s 5162 65 1470
#Northern
execute if score @s warpbook matches 5 run tp @s 434 80 -828
#Eastern
execute if score @s warpbook matches 6 run tp @s 1412 88 154
#Souther
execute if score @s warpbook matches 7 run tp @s 407 95 1267
#Western
execute if score @s warpbook matches 8 run tp @s -742 90 95
#Northeastern
execute if score @s warpbook matches 9 run tp @s 1419 132 -824
#Southeastern
execute if score @s warpbook matches 10 run tp @s 1374 86 1150
#Northwestern
execute if score @s warpbook matches 11 run tp @s -508 77 -825
#Southwestern
execute if score @s warpbook matches 12 run tp @s -507 83 1150

#BEFORE HERE
scoreboard players set @s warpbook 0
#Play fancy particle effects
execute at @s run particle minecraft:totem_of_undying ~.1 ~.1 ~.1 0 0 0 0.7 250 force
execute at @s run playsound minecraft:block.beacon.ambient voice @s ~ ~ ~ 100
