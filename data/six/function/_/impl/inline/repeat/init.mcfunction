#>six:_/impl/inline/repeat/init
#--------------------
# - six:api/inline/repeat
#--------------------

data modify storage six:var repeat.scopes append from storage six:in repeat
data remove storage six:in repeat

$scoreboard players set *repeat.iter.$(scope) -six 0
function six:_/impl/inline/repeat/command with storage six:var repeat.scopes[-1]

$scoreboard players operation *repeat.return --six = *repeat.iter.$(scope) -six

$scoreboard players reset *repeat.iter.$(scope) -six