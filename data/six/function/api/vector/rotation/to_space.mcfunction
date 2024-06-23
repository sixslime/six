#> six:api > vector/rotation/to_space
#--------------------
# -> vector : float[2] (rotation vector)
# => magnitude : double = 1
#--------------------
# <- result : double[3] (space vector)
#--------------------
#> generates a space vector with magnitude <magnitude> in the direction of a rotation <vector>.
#--------------------
#- builtin precision.
#- >result< = [-sin(<rotation[0]>), -sin(<rotation[1]), cos(<rotation[0]>)] * <magnitude>.
#- inverse of six:api/vector/space/to_rotation.
#--------------------
# ...
#--------------------

execute unless data storage six:in to_space.magnitude run data modify storage six:in to_space.magnitude set value 1

data modify storage six:var to_space.xrot set from storage six:in to_space.vector[0]
data modify storage six:var to_space.yrot set from storage six:in to_space.vector[1]
data modify storage six:var to_space.magnitude set from storage six:in to_space.magnitude

execute positioned 0 0 0 align xyz summon marker run function six:_/impl/vector/rotation/to_space/do with storage six:var to_space

data remove storage six:in to_space
data remove storage six:var to_space