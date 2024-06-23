#> six:api > object/partial
#--------------------
# -> object: obj
# => get: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- result: obj[]
#--------------------
#> if <get.only>: gets <object> with ONLY the fields specified in <get.only>
#> if <get.without>: gets <object> WITHOUT the fields specified in <get.without>
#--------------------
#- if neither <get.without> nor <get.only> are specified, just returns <object>
#--------------------
# 1 - <get.only> or <get.without> was specified
# 0 - <get.only> or <get.without> was not specified
#--------------------

execute unless data storage six:in partial.get.without unless data storage six:in partial.get.only run return run function six:_/impl/object/partial/none

execute if data storage six:in partial.get.only run function six:_/impl/object/partial/only
execute if data storage six:in partial.get.without run function six:_/impl/object/partial/without

data remove storage six:in partial
data remove storage six:var partial