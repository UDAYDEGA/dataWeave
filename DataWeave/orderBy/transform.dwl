%dw 2.0
output application/json
var a = { "High" : 1,"Medium":2, "Low":3}
---
payload orderBy ((item, index) -> a[item.priority])