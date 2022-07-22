import Felgo 3.0
import QtQuick 2.0
import "helper"
import "pages"

Item {
    anchors.fill: parent

    // app content with plugin list
    NavigationStack {
        id: pluginMainItem

        // initial page contains list if plugins and opens pages for each plugin when selected
        ListPage {
            id: page
            title: qsTr("Felgo Plugins")

            model: ListModel {
                ListElement { type: "Advertising"; name: "AdMob";
                    detailText: "Ad Monetization and Promotion"; image: "../assets/logo-admob.png" }
                ListElement { type: "Notifications"; name: "Local Notifications"
                    detailText: "Schedule Local Notifications"; image: "../assets/logo-localpush.png" }
                ListElement { type: "Notifications"; name: "OneSignal Push Notifications"
                    detailText: "Targeted Push Notifications"; image: "../assets/logo-onesignal.png" }
            }

            delegate: PluginListItem {
                visible: name !== "GameCenter" || Theme.isIos
                opacity: enabled ? 1.0 : 0.3

                onSelected: {
                    switch (name) {
                    case "AdMob":
                        page.navigationStack.push(Qt.resolvedUrl("pages/AdMobPage.qml"))
                        break
                    case "Local Notifications":
                        page.navigationStack.push(notificationPage)
                        break
                    case "OneSignal Push Notifications":
                        page.navigationStack.push(Qt.resolvedUrl("pages/OneSignalPage.qml"))
                        break
                    }
                }
            }

            section.property: "type"
            section.delegate: SimpleSection { }
        }
    }
}
