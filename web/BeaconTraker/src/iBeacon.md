%IBeacon.kt
---------------

###This class cosists in the istance of the iBeacon devices

There we define the following attributes

```Kotlin
var beaconName: String? = null
var beaconUuid: String? = null
var major: String? = null
var minor: String? = null
var beaconAddress: String? = null
var lastTimeStamp: Long = 0
var misurations: ArrayList<Int>
var distances: ArrayList<Distances>
var rssi: Int = 0
var powerTx: Int = 0
```
In **beaconUuid**, **major**, **minor** are stored the beacon identity features
**misurations** stores a list of scans results to estimate the distance of the beacon
**distances** stores a list of distances measured that will be sent to the server
<br>
Distances class is composed by de **beaconDistance** and the **timeStampMillis**
```Kotlin
inner class Distances (internal var beaconDistance: Float, internal var timeStampMillis: Long)
```
To store misurations to the list we call
```Kotlin
fun addMisuration(misuration: Int, timeStampMillis: Long)
```
To store distances to the list we call
```Kotlin
fun addDistance(distance: Float, timeStampMillis: Long)
```
<br><br>
[home](../index.html)