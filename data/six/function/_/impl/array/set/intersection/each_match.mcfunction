#> six:_/impl/array/set/intersection/each_match
#--------------------
# ./each
#--------------------

data modify storage six:var intersection.b_item set from storage six:var intersection.matches[-1]

data modify storage six:in partial.object set from storage six:var intersection.b_item
data modify storage six:in partial.get set from storage six:in intersection.compare
function six:api/object/partial

data modify storage six:in equal.a set from storage six:var intersection.a_compare
data modify storage six:in equal.b set from storage six:out partial.result

execute if function six:api/object/equal run return run function six:_/impl/array/set/intersection/add_match with storage six:var intersection

data remove storage six:var intersection.matches[-1]
execute if data storage six:var intersection.matches[] run function six:_/impl/array/set/intersection/each_match