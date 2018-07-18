%GoogleApiClientUtils.kt
-------------------

###This class helps developer registering in GoogleApiClient service

Function to register to GoogleApiClient
```kotlin
fun googleApiClientRegister(context: Context,
                                connectionCallback: GoogleApiClient.ConnectionCallbacks, connectionFailedListener: GoogleApiClient.OnConnectionFailedListener): GoogleApiClient
```
Check if Google Play Services is installed on the current device
```Kotlin
fun checkPlayServices(context: Context): Boolean
```
<br><br>
[home](../index.html)