import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "abstractbutton.liu-xiao-guo"

    width: units.gu(100)
    height: units.gu(75)

    Page {
        title: i18n.tr("abstractbutton")

        Rectangle {
            id: red
            anchors.centerIn: parent
            width: units.gu(10)
            height: units.gu(10)
            border.color: "red"

            AbstractButton {
                anchors.fill: parent
                sensingMargins {
                    left: units.gu(1)
                    top: units.gu(1)
                    bottom: units.gu(1)
                    right: units.gu(10)
                }

                onClicked: {
                    console.log("it is clicked in red")
                }
            }
        }

        Rectangle {
            id: blue
            anchors.left: red.right
            anchors.top: red.top
            border.color: "blue"
            width: units.gu(10)
            height: units.gu(10)

//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    console.log("it is clicked in blue")
//                }
//            }
        }
    }
}

