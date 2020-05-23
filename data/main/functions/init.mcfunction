# Desc: Runs on datapack reload
#
# Called by: #minecraft:tick

#add all the scoreboards that we need for stuff

#Triggered by pushing a warp button in the book
scoreboard objectives add warpbook trigger

#Added to once per tick to keep track of time and trigger the main:second function. handled by main:master
scoreboard objectives add warptick dummy

#Keeps track of player's cooldown timers
scoreboard objectives add warpcooldown dummy

#Keeps track of if the player has the latest version of the book, prevents updating if they do. reset by main:resetupdate
scoreboard objectives add warpupdate dummy

#Triggered when a player pushes the update book button 
scoreboard objectives add warpupdatet trigger
