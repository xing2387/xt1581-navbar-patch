```shell
adb pull /system/framework
```

```shell
java -jar baksmali-2.2.5.jar de -b framework/arm/boot.oat services.odex
```

```shell
java -jar smali-2.2.5.jar as out -o classes.dex
```

```shell
zip services.jar -m classes.dex
```

xt1085 - android6.0
```shell
adb push services.jar /data/local/tmp/
adb shell
cd /data/local/tmp
dex2oat \
--runtime-arg -Xms64m \
--runtime-arg -Xmx512m \
--dex-file=services.jar \
--dex-location=/system/framework/services.jar \
--oat-file=services.odex \
--instruction-set=arm \
--instruction-set-variant=krait \
--instruction-set-features=default \
--include-patch-information \
--runtime-arg -Xnorelocate \
--no-generate-debug-info \
--abort-on-hard-verifier-error \
--compile-pic
```

xt1580 - android7.0 - 
KINZIE_RETLA_DS_7.0_NPKS25.200-12-9_cid12_subsidy-DEFAULT_CFC :
```shell
dex2oat \
--runtime-arg -Xms64m \
--runtime-arg -Xmx512m \
--runtime-arg -classpath \
--dex-file=services.jar \
--dex-location=/system/framework/services.jar \
--oat-file=services.odex \
--instruction-set=arm64 \
--instruction-set-variant=generic \
--instruction-set-features=default \
--include-patch-information \
--runtime-arg -Xnorelocate \
--no-generate-debug-info \
--no-inline-from=core-oj.jar \
--compile-pic
```


```shell
adb shell
su
mount -o rw,remount /system
cp services.odex /system/framework/oat/arm/services.odex
chmod 644 /system/framework/oat/arm/services.odex
reboot recovery
```

wipe dalvik/art-cache and cache
