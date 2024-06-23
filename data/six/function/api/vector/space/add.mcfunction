#> six:api > vector/add
#--------------------
# -> a: double[3]
# -> b: double[3]
#--------------------
# <- result: double[3]
#--------------------
#> adds vectors <a> and <b> with builtin precision.
#--------------------
#- implemented using positioned coordinate macros.
#--------------------
# ...
#--------------------

data modify storage six:var add.ax set from storage six:in add.a[0]
data modify storage six:var add.ay set from storage six:in add.a[1]
data modify storage six:var add.az set from storage six:in add.a[2]

data modify storage six:var add.bx set from storage six:in add.b[0]
data modify storage six:var add.by set from storage six:in add.b[1]
data modify storage six:var add.bz set from storage six:in add.b[2]

function six:_/impl/vector/space/add/do with storage six:var add

data remove storage six:var add
data remove storage six:in add