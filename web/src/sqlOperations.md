%SQLOperations.kt
----------------

###This class provide to help developer to execute sql operations

Function called to insert a new record into the database, it needs an hashmap which require key and value
```Kotlin
fun sqlInsert(tableName: String, record: HashMap<String, String>)
```
Function called to select records from the database, it needs a list of values and the logic statement filter
```Kotlin
fun sqlSelect(table: String, columns: ArrayList<String>?, params: String): Cursor
```
Function called to update database rows, it needs an hashmap with keys and values and an hashmap with filters
```Kotlin
fun sqlUpdate(table: String, objects: HashMap<String, String>, params: HashMap<String, String>)
```
Function called to delete rows from the database, it needs a String with the logic statement filter
```Kotlin
fun sqlDelete(table: String, params: String) 
```
Functions **cmdExecute()** and **cmdExecuteRead()** execute respectly a **Command** SQL String and a **Selection** SQL String

<br><br>
[home](../index.html)