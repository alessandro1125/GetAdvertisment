%MainActivity.kt
---------------

### This activity handles the graphics interface and from there is started the main service whose handles the background operations

Initialization of the views is managed calling this method
```Kotlin
setUpBars()
```

Initialization operations are handled by the following method
```Kotlin
askForPermissions()
```
whose checks if the application has **bluetooth** and **location** access, otherwise asks the user to enable them.

When checking permissions is done, the MainActivity call
```Kotlin
startServices()
```
whose call **registerGoogleApiClient()** and starts the [background service](../scanner/BleScannerService.html)

The following method is called when the application stops, it stop the scanning service to call his **onDestroy()** method, which provide to restart the servce
```Java
override fun onDestroy() {
    super.onDestroy()
    stopService(scannerServiceIntent)
    Log.i(TAG, resources.getString(R.string.on_destroy))
}
```
<br><br>
[home](../index.html)
