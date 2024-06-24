#> six:_/impl/context/rotation/do
#--------------------
# @api
#--------------------

tp @s ~ ~ ~ ~ ~
execute at @s run data modify storage six:out rotation.result set from entity @s Rotation

kill @s