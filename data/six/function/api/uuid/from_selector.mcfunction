#> six:api > uuid/from_selector
#--------------------
# -> selector: $selector
#--------------------
# <- result[]: {UUID: uuid}
#--------------------
#> gets the list of UUIDs of entities matching <selector>.
#--------------------
#- >result< preserves the order in which <selector> selects entities.
#- it is of note that >result< is not a list of raw UUIDs, but a list of {UUID: uuid} objects.
# - this is often more convenient to work with, raw UUIDs cannot be indexed into.
# - a list of raw UUIDs can be made trivially with `execute as <selector> run data modify storage ... append from entity @s UUID`
#--------------------
# ...
#--------------------

data modify storage six:out from_selector.result set value []
function six:_/impl/uuid/from_selector/do with storage six:in from_selector

data remove storage six:in from_selector
data remove storage six:var from_selector