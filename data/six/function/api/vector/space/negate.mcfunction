#> six:api > vector/space/negate
#--------------------
# -> vector: double[3]
#--------------------
# <- result: double[3]
#--------------------
#> multiplies all values of <vector> by -1.
#--------------------
#- literally calls six:api/decimal/negate on all values of <vector>.
#--------------------
# ...
#--------------------

data modify storage six:var _negate.out.vector set value [0d, 0d, 0d]
data modify storage six:var _negate.in set from storage six:in negate

data modify storage six:in negate.number set from storage six:var _negate.in.vector[0]
function six:api/decimal/negate
data modify storage six:var _negate.out.vector[0] set from storage six:out negate.result

data modify storage six:in negate.number set from storage six:var _negate.in.vector[1]
function six:api/decimal/negate
data modify storage six:var _negate.out.vector[1] set from storage six:out negate.result

data modify storage six:in negate.number set from storage six:var _negate.in.vector[2]
function six:api/decimal/negate
data modify storage six:var _negate.out.vector[2] set from storage six:out negate.result

data modify storage six:out negate.result set from storage six:var _negate.out.vector

data remove storage six:var _negate
data remove storage six:in negate