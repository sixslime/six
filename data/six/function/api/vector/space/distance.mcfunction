#> six:api > vector/space/distance
#--------------------
# -> a: double[3] (space vector)
# -> b: double[3] (space vector)
#--------------------
# <- result: double
#--------------------
#> gets the distance between <a> and <b>.
#--------------------
#- shorthand for negating <a>, adding it to <b>, then getting the magnitude.
#--------------------
# ...
#--------------------

data modify storage six:in negate.vector set from storage six:in distance.a
function six:api/vector/space/negate

data modify storage six:in add.a set from storage six:out negate.result
data modify storage six:in add.b set from storage six:in distance.b
function six:api/vector/space/add

data modify storage six:in magnitude.vector set from storage six:out add.result
function six:api/vector/space/magnitude

data modify storage six:out distance.result set from storage six:out magnitude.result

data remove storage six:in distance
data remove storage six:var distance