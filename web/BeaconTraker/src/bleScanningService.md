%BleScanningService.kt
--------------------

###This is the background service which performs the ble scaner and implements the location updates

The first method called by the service, after it's initialization
```kotlin
override fun onStartCommand(intent: Intent, flags: Int, startId: Int): Int
```
Inside this method, the fist istruction called is
```kotlin
registerGoogleApiClient()
```
when **onConnected()** method of **GoogleApiClient.ConnectionCallbacks** is called the service starts **BleScanner()** and subscribes for location updates calling
```kotlin
val mLocationListener = LocationConsumer()
val mLocationRequest = LocationRequest.create()
mLocationRequest.priority = LocationRequest.PRIORITY_HIGH_ACCURACY
mLocationRequest.interval = UPDATE_INTERVAL * 1000
//Avvio la sottoscrizione alla posizione
LocationServices.FusedLocationApi.requestLocationUpdates(googleApiClient,
        mLocationRequest, mLocationListener)
```

when the service is stopped by each cause, is called method
```Kotlin
override fun onDestroy() 
```
which sends a broadcastIntent to *org.geisoft.messages.service_restarter*, than [BroadcastRestarter.kt](../broadcast/BroadcastRestarter.html) is called

<br><br>
[home](../index.html)