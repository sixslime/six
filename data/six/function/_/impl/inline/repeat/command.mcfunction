#>six:_/impl/inline/repeat/command
#--------------------
# - six:_/impl/inline/repeat/init
#--------------------

execute if data storage six:var repeat.scopes[-1].with.null run function six:_/impl/inline/repeat/no_with with storage six:var repeat.scopes[-1]
execute unless data storage six:var repeat.scopes[-1].with.null run function six:_/impl/inline/repeat/with with storage six:var repeat.scopes[-1]

$scoreboard players add *repeat.iter.$(scope) -six 1
$execute unless score *repeat.returned -six matches 0 unless score *repeat.iter.$(scope) -six matches $(n).. run function six:_/impl/inline/repeat/command with storage six:var repeat.scopes[-1]