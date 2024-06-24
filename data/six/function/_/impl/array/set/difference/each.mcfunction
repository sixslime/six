#> six:_/impl/array/set/difference/each
#--------------------
# @api
#--------------------

data modify storage six:var difference.a_item set from storage six:in difference.a[-1]

data modify storage six:in partial.object set from storage six:var difference.a_item
data modify storage six:in partial.get set from storage six:in difference.compare
function six:api/object/partial

data modify storage six:var difference.a_compare set from storage six:out partial.result
data modify storage six:var difference.matches set value []
function six:_/impl/array/set/difference/each.1 with storage six:var difference

execute if data storage six:var difference.matches[] run function six:_/impl/array/set/difference/each_match

data remove storage six:in difference.a[-1]
execute if data storage six:in difference.a[] run function six:_/impl/array/set/difference/each