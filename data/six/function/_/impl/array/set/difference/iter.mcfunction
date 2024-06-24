#> six:_/impl/array/set/difference/iter
#--------------------
# - six:api/array/set/difference
#--------------------

$data modify storage six:var difference.iter.a_item set from storage six:in difference.a[$(i)]

data modify storage six:in partial.object set from storage six:var difference.iter.a_item
data modify storage six:in partial.get set from storage six:in difference.compare
function six:api/object/partial

execute store result score *difference.tags -six run data get storage six:out partial.result
execute if score *difference.tags -six matches 0 run return 1

# '1' if <a_item> is contained in <b>
execute store result score *difference.match -six run function six:_/impl/array/set/difference/compare with storage six:out partial

execute if score *difference.match -six matches 0 run data modify storage six:out difference.unique_a append from storage six:var difference.iter.a_item