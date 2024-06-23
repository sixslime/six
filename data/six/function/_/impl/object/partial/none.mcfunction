#> six:_/impl/object/partial/none
#--------------------
# - six:api/object/partial
#--------------------

data modify storage six:out partial.result set from storage six:in partial.object
data remove storage six:in partial

return 0