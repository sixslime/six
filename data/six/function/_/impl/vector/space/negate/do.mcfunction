#> six:_/impl/vector/space/negate/do
#--------------------
# @api
#--------------------

$execute rotated $(xrot) $(yrot) run tp @s ^ ^ ^$(magnitude)
execute at @s run data modify storage six:out to_space.result set from entity @s Pos

kill @s