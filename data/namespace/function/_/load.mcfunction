#>namespace:_/load
#--------------------
# @LOAD
#--------------------

# lantern
scoreboard players set *namespace load.status 1

#settings
execute unless data storage namespace:settings {PERSIST:true} run function namespace:settings

#declare storage namespace:var
#declare storage namespace:in
#declare storage namespace:out
#declare storage namespace:const
#declare storage namespace:event

#scoreboards
scoreboard objectives add _namespace dummy
#scorboard objectives add namespace-something dummy