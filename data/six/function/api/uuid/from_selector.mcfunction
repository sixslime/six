#> six:api > uuid/from_selector
#--------------------
# -> selector: $selector
#--------------------
# <- result[]: {UUID: uuid}
#--------------------
#> converts a <selector> into a list of UUIDs.
#--------------------
# ...
#--------------------
# ...
#--------------------

data modify storage six:out from_selector.result set value []
function six:_/impl/uuid/from_selector/do with storage six:in from_selector

data remove storage six:in from_selector
data remove storage six:var from_selector