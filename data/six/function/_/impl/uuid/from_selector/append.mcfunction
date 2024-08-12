#> six:_/impl/uuid/from_selector/append
#--------------------
# ./do
#--------------------

data modify storage six:out from_selector.result append value {}
data modify storage six:out from_selector.result[-1].UUID set from entity @s UUID
