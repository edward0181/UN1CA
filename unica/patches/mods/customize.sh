echo "ro.unica.version=$ROM_VERSION" >> "$WORK_DIR/system/system/build.prop"

if [ ! -d "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk" ]; then
    bash "$SRC_DIR/scripts/apktool.sh" d "/system/priv-app/SecSettings/SecSettings.apk"
fi
cp -a --preserve=all "$SRC_DIR/unica/patches/mods/SecSettings.apk/"* "$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk"
