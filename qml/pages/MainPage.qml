import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: mainPage

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Configuration")
                onClicked: pageStack.push(Qt.resolvedUrl("ConfigPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: childrenRect.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            anchors.fill: parent
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("My IMC")
            }

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Informations")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            TextField {
                placeholderText: "First name"
                label: "First name"
                width: parent.width
            }
            TextArea {
                placeholderText: "Last name"
                label: "Last name"
                width: parent.width
            }
        }
    }
}
