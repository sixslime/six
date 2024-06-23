#> six:_/impl/vector/rotation/to_space/do
#--------------------
# @api
#--------------------

$execute rotated $(xrot) $(yrot) run tp @s ^ ^ ^$(magnitude)
execute at @s run data modify storage six:out to_space.result set from entity @s Pos

kill @s