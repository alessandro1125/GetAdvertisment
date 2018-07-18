%BeaconListHandler.kt
-------------------

### This class stores the beacon list and manages scans

```kotlin
fun discoveredBeacon(iBeacon: IBeacon, rssi: Int, timeStampMillis: Long) {
```
this method is called from [BleScanner.java](BleScanner.html) when a scan is performed, when a new beacon is revealed or a beacon has moved for a distance bigger than **DISTANCE_FLUCTUATION_MT** constant, it will be notified to the server.

The following method provide to notify the beacon informations to the server
```kotlin
private fun sendPositionUpdate() {
```

To calulate the most probable value this function analyze the list of mesurations stored in IBeacon instance class and return him
```Kotlin
private fun normal_distr_distance(misurations: ArrayList<Int>): Int {
```
This function calculate the beacon distance from **rssi** value and the **TX power** trasmitted by the beacon
```Kotlin
private fun distance_calulator(rssiMeasured: Int, txPower: Int): Double {
```
BeaconListHandler class starts a **EventTimer** that check every minute if the devices on the list are still in range, otherwise it removes them.

<br><br>
[home](../index.html)