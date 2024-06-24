#> six:_/impl/array/set/intersection/match
#--------------------
# ./iter
#--------------------

data modify storage six:out intersection.shared_a append from storage six:var intersection.iter.a_item
data modify storage six:out intersection.shared_b append from storage six:var intersection.iter.b_item
data modify storage six:out intersection.shared append from storage six:out partial.result