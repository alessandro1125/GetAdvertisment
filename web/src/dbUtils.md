%DBUtils.kt
-----------

###This class handle database connections and build the database on the first installation of the application or on upgrades

Enum that define the possible types of cmd supported by SWL
```Kotlin
enum class TipoQuery {
    Selection,
    Command
}
```
Function to open database connection
```Kotlin
fun open()
```
Function to close database connection
```Kotlin
fun close()
```
Function to execute SQL query that return a Cursor
```Kotlin
fun Execute(Query: String, tipoCmd: TipoQuery): Cursor?
```

DbHelper class provide to handle the first configuration or upgrades of database, it extends SQLiteOpenHelper class
```Kotlin
private class DbHelper (context: Context) : SQLiteOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION)
```
inside him we have **onCreate()** and **onUpgrade()** method, whoose are called respectly on the first istallation and on an upgrade of application

<br><br>
[home](../index.html)