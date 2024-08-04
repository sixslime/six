#> six:api > vector/space/to_rotation
#--------------------
# -> vector : double[3] (space vector)
#--------------------
# <- result : float[2] (rotation vector)
#--------------------
#> gets the rotation vector that faces in the direction of a space <vector>.
#--------------------
#- builtin precision.
#- >result[0]< = -arctan(<vector[0]> / <vector[2]>)
#- >result[1]< = -arctan(<vector[1]> / sqrt(<vector[0]>^2 + <vector[2]>^2)]
#- inverse of six:api/vector/rotation/to_space
#--------------------
# ...
#--------------------

data modify storage six:var to_rotation.x set from storage six:in to_rotation.vector[0]
data modify storage six:var to_rotation.y set from storage six:in to_rotation.vector[1]
data modify storage six:var to_rotation.z set from storage six:in to_rotation.vector[2]

execute positioned 0 0 0 align xyz summon marker run function six:_/impl/vector/space/to_rotation/do with storage six:var to_rotation

data remove storage six:in to_rotation
data remove storage six:var to_rotation