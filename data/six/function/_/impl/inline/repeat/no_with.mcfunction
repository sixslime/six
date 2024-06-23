#>six:_/impl/inline/repeat/no_with
#--------------------
# - six:_/impl/inline/repeat/init
#--------------------

$execute store result storage six:var repeat.no_with.$(iter_var) int 1 run scoreboard players get *repeat.iter.$(scope) -six
$execute store result score *repeat.returned -six run function $(function) with storage six:var repeat.no_with