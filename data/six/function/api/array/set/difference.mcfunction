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
#- if the size of <a> and <b> are known, set <a> to the smaller of the two for optimal performance.
#--------------------
# ...
#--------------------

data modify storage six:out difference.unique_a set from storage six:in difference.a
data modify storage six:out difference.unique_b set from storage six:in difference.b

execute if data storage six:in difference.a[] run function six:_/impl/array/set/difference/each

data remove storage six:in difference
data remove storage six:var difference
