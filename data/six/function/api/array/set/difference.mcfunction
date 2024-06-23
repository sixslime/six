#> six:api > array/set/difference
#--------------------
# -> a: obj[]
# -> b: obj[]
# => compare: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- unique_a: obj[]
# <- unique_b: obj[]
#--------------------
#> gets all objects that are unique to <a> (not in <b>) and vice versa.
#--------------------
#- if <compare>: compares only or without specified tags for each object. (See six:api/object/partial)
#- if the size of <a> and <b> are known, set <a> to the smaller of the two for maximum performance.
#--------------------
# 0 - <a> and <b> have no differences.
# 1 - <a> and <b> have at least 1 difference.
#--------------------

data modify storage six:out difference.unique_a set value []
data modify storage six:out difference.unique_b set value []
scoreboard players set *difference.return --six 0

data merge storage six:in {repeat:{function:"six:_/impl/array/set/difference/iter", with:"six:in difference"}}
execute store result storage six:in repeat.n int 1 if data storage six:in difference.a[]
function six:api/inline/repeat

#{six:in -> difference.b} is affected by the above loop
data modify storage six:out difference.unique_b set from storage six:in difference.b

data remove storage six:in difference
data remove storage six:var difference
scoreboard players reset *difference.match -six
scoreboard players reset *difference.tags -six

execute if data storage six:out difference.unique_a[] run scoreboard players set *difference.return --six 1
execute if data storage six:out difference.unique_b[] run scoreboard players set *difference.return --six 1
return run scoreboard players get *difference.return --six