#> six:api > uuid/guuid
#--------------------
# -> UUID: uuid
#--------------------
# <- result: guuid
#--------------------
#> converts <UUID> to a guuid (UUID able to be directly used as a selector).
#--------------------
# ...
#--------------------
# ...
#--------------------
# slightly modified implementation of https://github.com/gibbsly/gu.
#--------------------

data merge storage six:var {guuid:{0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}}

execute store result score *guuid.0 -six store result score *guuid.1 -six run data get storage six:in guuid.UUID[0]
execute store result storage six:var guuid.0 int 1 run scoreboard players operation *guuid.0 -six %= *256 --six
execute store result score *guuid.2 -six run scoreboard players operation *guuid.1 -six /= *256 --six
execute store result storage six:var guuid.1 int 1 run scoreboard players operation *guuid.1 -six %= *256 --six
execute store result score *guuid.3 -six run scoreboard players operation *guuid.2 -six /= *256 --six
execute store result storage six:var guuid.2 int 1 run scoreboard players operation *guuid.2 -six %= *256 --six
execute store result storage six:var guuid.3 int 1 run scoreboard players operation *guuid.3 -six /= *256 --six

execute store result score *guuid.0 -six store result score *guuid.1 -six run data get storage six:in guuid.UUID[1]
execute store result storage six:var guuid.4 int 1 run scoreboard players operation *guuid.0 -six %= *256 --six
execute store result score *guuid.2 -six run scoreboard players operation *guuid.1 -six /= *256 --six
execute store result storage six:var guuid.5 int 1 run scoreboard players operation *guuid.1 -six %= *256 --six
execute store result score *guuid.3 -six run scoreboard players operation *guuid.2 -six /= *256 --six
execute store result storage six:var guuid.6 int 1 run scoreboard players operation *guuid.2 -six %= *256 --six
execute store result storage six:var guuid.7 int 1 run scoreboard players operation *guuid.3 -six /= *256 --six

execute store result score *guuid.0 -six store result score *guuid.1 -six run data get storage six:in guuid.UUID[2]
execute store result storage six:var guuid.8 int 1 run scoreboard players operation *guuid.0 -six %= *256 --six
execute store result score *guuid.2 -six run scoreboard players operation *guuid.1 -six /= *256 --six
execute store result storage six:var guuid.9 int 1 run scoreboard players operation *guuid.1 -six %= *256 --six
execute store result score *guuid.3 -six run scoreboard players operation *guuid.2 -six /= *256 --six
execute store result storage six:var guuid.a int 1 run scoreboard players operation *guuid.2 -six %= *256 --six
execute store result storage six:var guuid.b int 1 run scoreboard players operation *guuid.3 -six /= *256 --six

execute store result score *guuid.0 -six store result score *guuid.1 -six run data get storage six:in guuid.UUID[3]
execute store result storage six:var guuid.c int 1 run scoreboard players operation *guuid.0 -six %= *256 --six
execute store result score *guuid.2 -six run scoreboard players operation *guuid.1 -six /= *256 --six
execute store result storage six:var guuid.d int 1 run scoreboard players operation *guuid.1 -six %= *256 --six
execute store result score *guuid.3 -six run scoreboard players operation *guuid.2 -six /= *256 --six
execute store result storage six:var guuid.e int 1 run scoreboard players operation *guuid.2 -six %= *256 --six
execute store result storage six:var guuid.f int 1 run scoreboard players operation *guuid.3 -six /= *256 --six

function six:_/impl/uuid/guuid/get_hexes with storage six:var guuid
function six:_/impl/uuid/guuid/concat_uuid with storage six:var guuid

scoreboard players reset *guuid.0 -six
scoreboard players reset *guuid.1 -six
scoreboard players reset *guuid.2 -six
scoreboard players reset *guuid.3 -six
data remove storage six:var guuid
data remove storage six:in guuid