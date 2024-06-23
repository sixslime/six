#> six:api > array/set/ensure
#--------------------
# -> array: obj[]
# => compare: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- result: obj[]
# <- compared: obj[]
#--------------------
#> removes duplicates from <array>.
#> for any duplicate elements found, the lowest-index element is used.
#> >compared< is >result< but it's elements only contain the compared tags.
#--------------------
#- if <compare>: compares only or without specified tags for each object. (See six:api/object/partial)
# - >compared< and >result< are identical if <compare> is unspecified.
#- an element must match ALL tags of another element to be considered a duplicate.
#--------------------
# ...
#--------------------

data modify storage six:out ensure.result set value []
data modify storage six:out ensure.compared set value []

data modify storage six:var ensure.partial.in.get set from storage six:in ensure.compare

execute if data storage six:in ensure.array[] run function six:_/impl/array/set/ensure/iter
data remove storage six:in ensure
data remove storage six:var ensure
scoreboard players reset *ensure.tags -six