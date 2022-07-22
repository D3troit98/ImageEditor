pragma Singleton

import QtQuick 2.0

Item {

    // AdMob
    readonly property string admobBannerAdUnitId: "ca-app-pub-9155324456588158/9913032020"
    readonly property string admobInterstitialAdUnitId: "ca-app-pub-9155324456588158/9075427220"
    readonly property var admobTestDeviceIds: [ "d17ba18ff075e7c20c5ce081813d9666", "28CA0A7F16015163A1C70EA42709318A" ]

    // OneSignal
    readonly property string oneSignalAppId: "a23e646c-0d6f-4611-836e-5bf14ee96e98"
    readonly property string oneSignalGoogleProjectNumber: "522591647137"
}
