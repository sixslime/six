#> six:_/impl/object/partial/without
#--------------------
# - six:api/object/partial
#--------------------

data modify storage six:out partial.result set from storage six:in partial.object

data modify storage six:in repeat.function set value "six:_/impl/object/partial/without_iter"
execute store result storage six:in repeat.n int 1 if data storage six:in partial.get.without[]
function six:api/inline/repeat