#> six:_/impl/array/set/intersection/each
#--------------------
# @api
#--------------------

data modify storage six:var intersection.a_item set from storage six:in intersection.a[-1]

data modify storage six:in partial.object set from storage six:var intersection.a_item
data modify storage six:in partial.get set from storage six:in intersection.compare
function six:api/object/partial

#>---- D E B U G --------
say A ITEM
data modify storage loggr:in log.message set from storage six:var intersection.a_item
function loggr:api/log
#>--------------

data modify storage six:var intersection.a_compare set from storage six:out partial.result
data modify storage six:var intersection.matches set value []
function six:_/impl/array/set/intersection/each.1 with storage six:var intersection

execute if data storage six:var intersection.matches[] run function six:_/impl/array/set/intersection/each_match

data remove storage six:in intersection.a[-1]
execute if data storage six:in intersection.a[] run function six:_/impl/array/set/intersection/each