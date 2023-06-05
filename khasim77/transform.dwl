%dw 2.0
import mergeWith from dw::core::Objects
//Here I Have combined the input1 and input2 into a single Array with the help of mergewith function
var input1 = 
[ 
    {
"Name": "khasim",
"Surname": "shaik"
    }
]
var input2 =
[
   {
"Address": "sainagar",
"Country": "America"
   }
]
output application/json
---
input1 map (
   $ mergeWith input2[$$]
)
