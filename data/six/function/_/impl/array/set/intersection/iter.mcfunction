#> six:_/impl/array/set/intersection/iter
#--------------------
# - six:api/array/set/intersection
#--------------------

$data modify storage six:var intersection.iter.a_item set from storage six:in intersection.a[$(i)]

data modify storage six:in partial.object set from storage six:var intersection.iter.a_item
data modify storage six:in partial.get set from storage six:in intersection.compare
function six:api/object/partial

execute store result score *intersection.tags -six run data get storage six:out partial.result
execute if score *intersection.tags -six matches 0 run return 1

# '1' if <a_item> is contained in <b>
execute store result score *intersection.match -six run function six:_/impl/array/set/intersection/compare with storage six:out partial

execute if score *intersection.match -six matches 1 run function six:_/impl/array/set/intersection/match