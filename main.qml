import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Dialogs

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    color: "#ffccd5"
    title: "Filters"

    Material.theme: Material.Light
    Material.accent: Material.Pink


    Dialog {
        id: dialog
        title: "Filters"
        standardButtons: Dialog.Ok | Dialog.Cancel
        modal: true
        visible: true
        anchors.centerIn: parent

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")

        ColumnLayout {
            anchors.fill: parent
            spacing: 20

            TextField {
                id: searchField
                placeholderText: "Search region, suburb or postcode"
                text: "Tasmania"
                font.pixelSize: 16
                Layout.preferredWidth: parent.width
            }

            RowLayout {
                spacing: 10
                Switch {
                    id: surroundingSwitch
                    checked: true
                }

                Label {
                    text: "Include surrounding areas"
                    font.pixelSize: 14
                }
            }
            RowLayout {
                spacing: 10

                Label {
                    text: "Distance"
                    font.pixelSize: 14
                }

               RangeSlider {
                    id: distanceSlider
                    from: 0
                    to: 100
                    stepSize: 1
                    orientation: Qt.Horizontal
                }
            }


            RowLayout {
                spacing: 10
                Label {
                    text: "Type"
                    font.pixelSize: 14
                }

                ComboBox {
                    id: typeComboBox
                    model: ["House", "Apartment", "Townhouse"]
                    currentIndex: 0
                    editable: true
                    font.pixelSize: 16
                }
            }



            RowLayout {
                spacing: 10

                Label {
                    text: "Bedrooms"
                    font.pixelSize: 14
                }


                SpinBox {
                    id: bedroomsSpinBox
                    from: 0
                    to: 10
                    value: 3
                }


                Label {
                    text: "Bathrooms"
                    font.pixelSize: 14
                }

                SpinBox {
                    id: bathroomsSpinBox
                    from: 0
                    to: 10
                    value: 1
                }
            }

            RowLayout {
                spacing: 10

                Switch {
                    id: excludeSwitch
                    checked: false
                }

                Label {
                    text: "Exclude properties under offer"
                    font.pixelSize: 14
                }


            }

        }
    }
}
