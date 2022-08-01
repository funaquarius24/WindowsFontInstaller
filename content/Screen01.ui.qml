import QtQuick
import QtQuick.Controls
import WindowsFontInstaller

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        width: 121
        height: 26
        text: qsTr("Select font file")
        font.pointSize: 12
        anchors.verticalCenterOffset: -209
        anchors.horizontalCenterOffset: -15
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    ListView {
        id: listView
        x: 35
        y: 125
        width: 110
        height: 435
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
                spacing: 10
            }
        }
    }

    ComboBox {
        id: comboBox
        x: 40
        y: 99
        width: 95
        height: 20
    }

    TextField {
        id: textField
        x: 284
        y: 130
        width: 187
        height: 26
        text: "C:\\"
        font.pointSize: 12
        placeholderText: qsTr("Text Field")
    }

    Button {
        id: button
        x: 470
        y: 128
        width: 64
        height: 30
        text: qsTr("Browse")
        font.pointSize: 12
    }

    Button {
        id: button1
        x: 359
        y: 233
        width: 64
        height: 30
        text: qsTr("Install")
        font.pointSize: 12
    }

    CheckBox {
        id: checkBox
        x: 284
        y: 174
        text: qsTr("Install to system")
    }

    CheckBox {
        id: checkBox1
        x: 284
        y: 196
        text: qsTr("Install only for this session")
    }

    Label {
        id: label
        x: 284
        y: 280
        width: 250
        height: 22
        text: qsTr("Installation ...")
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 12
    }

    Label {
        id: label1
        x: 284
        y: 48
        width: 250
        height: 32
        text: qsTr("Font Installation")
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 18
    }

    Label {
        id: label2
        x: 278
        y: 320
        width: 250
        height: 32
        text: qsTr("Font Uninstallation")
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 18
    }

    TextField {
        id: textField1
        x: 278
        y: 389
        width: 256
        height: 26
        placeholderText: qsTr("Text Field")
        font.pointSize: 12
    }

    Text {
        width: 179
        height: 26
        text: qsTr("Currently selected font:")
        anchors.horizontalCenterOffset: 8
        anchors.verticalCenterOffset: 51
        font.pointSize: 12
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Button {
        id: button2
        x: 350
        y: 430
        width: 82
        height: 30
        text: qsTr("Uninstall")
        font.pointSize: 12
    }

    Label {
        id: label3
        x: 278
        y: 521
        width: 250
        height: 22
        text: qsTr("Uninstallation ...")
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 12
    }
}
