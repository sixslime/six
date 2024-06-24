#> six:api > object/equal
#--------------------
# -> a: obj
# -> b: obj
#--------------------
# ...
#--------------------
#> checks if <a> and <b> are exactly equal objects.
#--------------------
# ...
#--------------------
# 1 - <a> and <b> are equal
# 0 - <a> and <b> are not equal
#--------------------

execute store result score *equal.not -six run data modify storage six:in equal.a set from storage six:in equal.b
scoreboard players set *equal.return --six 0
execute if score *equal.not -six matches 0 run scoreboard players set *equal.return --six 1

scoreboard players reset *equal.not -six
data remove storage six:var equal

return run scoreboard players get *equal.return --six