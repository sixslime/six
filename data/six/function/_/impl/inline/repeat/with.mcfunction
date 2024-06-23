#>six:_/impl/inline/repeat/with
#--------------------
# - six:_/impl/inline/repeat/init
#--------------------

$data modify storage six:var repeat.with set from storage $(with)
$execute store result storage six:var repeat.with.$(iter_var) int 1 run scoreboard players get *repeat.iter.$(scope) -six
$execute store result score *repeat.returned -six run function $(function) with storage six:var repeat.with