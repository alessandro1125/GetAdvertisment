%LocationConsumer.kt
----------------

###This class handle location updates, it implements LocationListener.java

The class is initialized from [BleScanningService.kt](../scanner/BleScanningService.html) as **LocationListener**, the following function is called on a new location register event, then when i ask **GoogleApiClient** for the last location registered it **returns** this 
```kotlin
override fun onLocationChanged(location: Location)
```
<br><br>

[home](../index.html)