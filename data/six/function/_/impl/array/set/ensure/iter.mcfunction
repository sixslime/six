#> six:_/impl/array/set/ensure/iter
#--------------------
# @api
#--------------------

data modify storage six:var ensure.partial.in.object set from storage six:in ensure.array[0]
data modify storage six:in partial set from storage six:var ensure.partial.in
function six:api/object/partial

data modify storage six:out ensure.result append from storage six:in ensure.array[0]
data modify storage six:out ensure.compared append from storage six:out partial.result

execute store result score *ensure.tags -six run data get storage six:out partial.result
execute if score *ensure.tags -six matches 0 run data remove storage six:in ensure.array[0]

#remove {six:in -> ensure.array[{partial.result}]}
execute if score *ensure.tags -six matches 1.. run function six:_/impl/array/set/ensure/remove with storage six:out partial

execute if data storage six:in ensure.array[] run function six:_/impl/array/set/ensure/iter