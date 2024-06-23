#>six:_/impl/text/evaluate/sign
#--------------------
# ./do
#--------------------

$setblock ~ ~ ~ oak_sign{front_text:{messages:['$(text)', '""', '""', '""']}}
data modify storage six:out evaluate.result set from block ~ ~ ~ front_text.messages[0]

setblock ~ ~ ~ bedrock