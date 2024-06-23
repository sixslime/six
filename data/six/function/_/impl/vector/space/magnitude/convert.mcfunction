#>six:_/impl/vector/magnitude/convert
#--------------------
# - six:api/vector/magnitude
#--------------------

#execute store result storage six:var magnitude.vec.x float 1.0 run data get storage six:in magnitude.space[0]
#execute store result storage six:var magnitude.vec.y float 1.0 run data get storage six:in magnitude.space[1]
#execute store result storage six:var magnitude.vec.z float 1.0 run data get storage six:in magnitude.space[2]

data modify storage six:var magnitude.vec.x set from storage six:in magnitude.vector[0]
data modify storage six:var magnitude.vec.y set from storage six:in magnitude.vector[1]
data modify storage six:var magnitude.vec.z set from storage six:in magnitude.vector[2]

execute summon item_display run function six:_/impl/vector/space/magnitude/transform with storage six:var magnitude.vec