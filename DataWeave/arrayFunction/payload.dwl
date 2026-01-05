%dw 2.0
output application/json
---
(payload groupBy ((item, index) -> item.dept)) pluck ((value, key, index) -> {
    (key) : value[ -1] - "dept"}) reduce ($$++$ )