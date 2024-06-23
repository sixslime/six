#> six:_/impl/object/partial/only
#--------------------
# - six:api/object/partial
#--------------------

data modify storage six:out partial.result set value {}

data modify storage six:in repeat.function set value "six:_/impl/object/partial/only_iter"
execute store result storage six:in repeat.n int 1 if data storage six:in partial.get.only[]
function six:api/inline/repeat