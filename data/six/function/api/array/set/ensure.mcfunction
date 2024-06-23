#> six:api > array/set/ensure
#--------------------
# -> array: obj[]
# => compare: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- result: obj[]
# <- compared: obj[]
#--------------------
#> removes duplicates from <array>, making it a set.
#> for any duplicate elements found, the lowest-index element is used in >result<.
#--------------------
#- if <compare>: only the tags specified are taken into account.
#  - both >result< and >compared< are <array> as a set, but >compared<'s elements only contain the nbt tags specified by <compare>.
#- if <compare> is unspecified, >result< and >compared< are identical.
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