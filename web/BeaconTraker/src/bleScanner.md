BleScanner.java
---------------

###BleScaner extends ScanCallback, this class handle the scans and sends them to the BeaconListHandler class which processes them

Costructor needs three parameters
* **BluetoothAdapter**
we access them in [BleScanningService.kt](BleScanningService.html)
```Kotlin
val bluetoothManager = getSystemService(Context.BLUETOOTH_SERVICE) as BluetoothManager
val mBluetoothAdapter = bluetoothManager.adapter
```
* **Context** 
this is the [BleScanningService.kt](BleScanningService.html) context
* **GoogleApiClient**
we can get them calling 
```Kotlin
fun googleApiClientRegister(context: Context,connectionCallback: GoogleApiClient.ConnectionCallbacks, connectionFailedListener: GoogleApiClient.OnConnectionFailedListener): GoogleApiClient
```
from [GoogleApiClientUtils.kt](../utils/GoogleApiClientUtils.html)
<br>

To start the ble scanner we call
```Java
bluetoothLeScanner.startScan(filter, builderScanSettings.build(), leScanCallback);
```
The results of the scan are handled in
```Java
@Override
public void onScanResult(int callbackType, ScanResult result)
```
method

**onScanFalied()** is called if the scan has been interrrupted
```Java
@Override
public void onScanFailed(int errorCode)
```

<br><br>
[home](../index.html)