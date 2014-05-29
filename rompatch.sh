#!/bin/bash
cd frameworks/native
echo "[2/3] STE OMX Fix https://gerrit.slimroms.net/8266"
git fetch https://gerrit.slimroms.net/SlimRoms/frameworks_native refs/changes/66/8266/3 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "native:Fix buffering on STE devices https://gerrit.slimroms.net/8267"
git fetch https://gerrit.slimroms.net/SlimRoms/frameworks_native refs/changes/67/8267/2 && git cherry-pick FETCH_HEAD
cd ..
echo "----------------------------------------"
cd av
echo "STE Multimedia Fix https://gerrit.slimroms.net/8269"
git fetch https://gerrit.slimroms.net/SlimRoms/frameworks_av refs/changes/69/8269/5 && git cherry-pick FETCH_HEAD
cd ..
echo "----------------------------------------"
cd base
echo "[1/3] STE OMX Fix https://gerrit.slimroms.net/8270"
git fetch https://gerrit.slimroms.net/SlimRoms/frameworks_base refs/changes/70/8270/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "SystemUI: add missing status bar image https://gerrit.slimroms.net/8271"
git fetch https://gerrit.slimroms.net/SlimRoms/frameworks_base refs/changes/71/8271/1 && git cherry-pick FETCH_HEAD
cd ../..
echo "----------------------------------------"
cd system/core
echo "[3/3] STE OMX Fix https://gerrit.slimroms.net/8273"
git fetch https://gerrit.slimroms.net/SlimRoms/android_system_core refs/changes/73/8273/5 && git cherry-pick FETCH_HEAD
cd ../..
echo "----------------------------------------"
cd packages/services/Telephony
echo "Reset the audio stream volume to fix low in-call volume bug https://gerrit.slimroms.net/8274"
git fetch https://gerrit.slimroms.net/SlimRoms/packages_services_Telephony refs/changes/74/8274/1 && git cherry-pick FETCH_HEAD
cd ../../..
echo "----------------------------------------"
cd build
echo "build: Add STE target-specific config https://gerrit.slimroms.net/8481"
git fetch ssh://Android-Andi@gerrit.slimroms.net:29418/SlimRoms/android_build refs/changes/81/8481/2 && git cherry-pick FETCH_HEAD
cd ..
echo "----------------------------------------"
cd packages/apps/Camera2
echo "Camera: Fix saturation, contrast, sharpness parameters https://gerrit.slimroms.net/8529"
git fetch ssh://Android-Andi@gerrit.slimroms.net:29418/SlimRoms/packages_apps_Camera2 refs/changes/29/8529/1 && git cherry-pick FETCH_HEAD
cd ../../..
echo "----------------------------------------"
echo "DONE"
