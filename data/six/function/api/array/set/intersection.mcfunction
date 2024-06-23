#> six:api > array/set/intersection
#--------------------
# -> a: obj[]
# -> b: obj[]
# => compare: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- shared_a: obj[]
# <- shared_b: obj[]
# <- shared: obj[]
#--------------------
#> gets all objects from <a> and <b> that share the same values for tags specified in <compare>.
#--------------------
#- if <compare>: compares only or without specified tags for each object. (See six:api/object/partial)
#  - >shared_a</>shared_b< contain the original objects from <a>/<b> that have shared tags.
#  - >shared< are the partial objects that only contain the tags specified by <compare>, shared by <a> and <b>
#- if <compare> is unspecified, >shared_a<, >shared_b<, and >shared< are all identical.
#- if the size of <a> and <b> are known, set <a> to the smaller of the two for maximum performance.
#--------------------
# 0 - <a> and <b> have no elements in common.
# 1 - <a> and <b> have at least 1 intersection.
#--------------------

data modify storage six:out intersection.shared_a set value []
data modify storage six:out intersection.shared_b set value []
data modify storage six:out intersection.shared set value []
scoreboard players set *intersection.return --six 0

data merge storage six:in {repeat:{function:"six:_/impl/array/set/intersection/iter", with: "six:in intersection"}}
execute store result storage six:in repeat.n int 1 if data storage six:in intersection.a[]
function six:api/inline/repeat

data remove storage six:in intersection
data remove storage six:var intersection
scoreboard players reset *intersection.match -six
scoreboard players reset *intersection.tags -six

execute if data storage six:out intersection.shared_a[] run scoreboard players set *intersection.return --six 1
return run scoreboard players get *intersection.return --six