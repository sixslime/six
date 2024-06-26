#> six:_/impl/array/set/difference/each_match
#--------------------
# ./each
#--------------------

data modify storage six:var difference.b_item set from storage six:var difference.matches[-1]

data modify storage six:in partial.object set from storage six:var difference.b_item
data modify storage six:in partial.get set from storage six:in difference.compare
function six:api/object/partial

data modify storage six:in equal.a set from storage six:var difference.a_compare
data modify storage six:in equal.b set from storage six:out partial.result

# DEV -- technically a macro line can be saved here, instead of removing a_item from unique_a, add to unique_a if there is NO match. unique_b macro cannot be avoided though.
execute if function six:api/object/equal run return run function six:_/impl/array/set/difference/remove_match with storage six:var difference

data remove storage six:var difference.matches[-1]
execute if data storage six:var difference.matches[] run function six:_/impl/array/set/difference/each_match