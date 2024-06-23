#>six:_/load
#--------------------
# @LOAD
#--------------------

# lantern
scoreboard players set *six load-status 1

#settings
execute unless data storage six:settings {PERSIST:true} run function six:settings

#declare storage six:var
#declare storage six:in
#declare storage six:out
#declare storage six:const
#declare storage six:dirty
#declare storage six:hook

#scoreboards
scoreboard objectives add _six dummy