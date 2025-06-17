Information:

module -> person
digest -> ER3D8e11t2XVDHjRHaewawpGvp6muG4nehP3NWJJTeEn
params -> name, city, dob, age
package id -> 0x2066cc76b83d66ec5a759b8f7d3f4b1749124ee8c60c1246e7224b049152a02a
callable function -> mint
explore contract -> https://devnet.suivision.xyz/object/0x92288381f8e5f04c5a8f24371711a989fbe54203bb4108e754fd4d3e3a405f2b
explore sample obj -> https://devnet.suivision.xyz/object/0x6690f707260cedf002d7c0a88f8e2a042bc9881016b5aabbcb68f4d6639c6aac

How to use:

cmd prompt -> sui client call --package 0xPACKAGE_ID --module person --function init --args 0xNAME 0xCITY 0xDOB AGE --gas-budget 50000000 (WINDOWS)

find encoding for NAME, CITY, AGE -> echo -n "..." | xxd -p (LINUX)

if XXD not available -> sudo apt update && sudo apt install xxd (LINUX)
