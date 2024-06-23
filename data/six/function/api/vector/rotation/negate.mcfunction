#> six:api > vector/rotation/negate
#--------------------
# -> vector: float[2] (rotation vector)
#--------------------
# <- result: float[2] (rotation vector)
#--------------------
#> gets the negative (rotation facing the exact opposite direction) of <vector>.
#--------------------
#- builtin precision.
#--------------------
# ...
#--------------------

execute store result score *negate.yrot -six run data get storage six:in negate.vector[1] 1000000
scoreboard players operation *negate.yrot -six *= *-1 --six
execute store result storage six:var negate.yrot float 0.000001 run scoreboard players get *negate.yrot -six
data modify storage six:var negate.xrot set from storage six:in negate.vector[0]

execute summon marker run function six:_/impl/vector/rotation/negate/do with storage six:var negate

data remove storage six:var negate
data remove storage six:in negate
scoreboard players reset *negate.yrot -six