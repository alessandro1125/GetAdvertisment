%BroadcastRestarter.java
---------------

### This class extends BroadcastReciever and restarts [BleScanningService.kt](../scanner/BleScanningService.html) when stopped

To start a service the application calls this command
```Java
context.startService(new Intent(context, BleScanningService.class));
```
**context** is the application Context passed by the BroadcastReciever **onRecieve()** method
```Java
@Overrride
public void onReceive(Context context, Intent intent)
```
**onRecieve()** method is called when each type of Application sends an Intent with *org.geisoft.messages.service_restarter* action type.
```Java
sendBroadcast(new Intent("org.geisoft.messages.service_restarter"));
```

<br><br>
[home](../index.html)