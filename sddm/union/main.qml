// â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
// UNION THEME â€” SDDM LOGIN SCREEN
// Unified National Institute for Orbital and Nuclear Research
// Ð“Ð¾ÑÑƒÐ´Ð°Ñ€ÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹ Ð¸Ð½ÑÑ‚Ð¸Ñ‚ÑƒÑ‚ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ñ… Ð¸ÑÑÐ»ÐµÐ´Ð¾Ð²Ð°Ð½Ð¸Ð¹
// Facility 04 â€” Terminal 7B-114
// Document: UN-04-SDDM-001  |  Classification: RESTRICTED
// â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import SDDM 0.1

Item {
    id: root

    // â”€â”€â”€ SCREEN SETUP â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
    LayoutMirroring.childrenEnabled: true

    property var screen: Screen

    // â”€â”€â”€ BACKGROUND â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
    Rectangle {
        anchors.fill: parent
        color: "#1a1d23"
    }

    // â”€â”€â”€ UNION LOGO (CENTER) â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
    Column {
        anchors.centerIn: parent
        spacing: 20

        // ASCII-style logo rendered as text
        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 0

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘        â—‰ â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€ â—‰           â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘        â”‚ â•²     â˜…   â•± â”‚           â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘        â”‚   â•²  â”‚  â•±   â”‚           â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘   â—‰ â”€â”€â”€â”‚â”€â”€â”€â”€â”€âŠ•â”€â”€â”€â”€â”€â”€â”‚â”€â”€â”€ â—‰       â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘        â”‚   â•±  â”‚  â•²   â”‚           â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘        â”‚ â•±         â•² â”‚           â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘        â—‰ â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€ â—‰           â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â• â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•£"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘     UNION // Ð“Ð˜Ð¡Ð¡ // FACILITY 04  â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•‘     EST. 1963                     â•‘"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•"
                color: "#b85450"
                font.family: "JetBrains Mono"
                font.pixelSize: 14
            }
        }

        // Subtitle
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "UNIFIED NATIONAL INSTITUTE FOR ORBITAL AND NUCLEAR RESEARCH"
            color: "#8891a0"
            font.family: "JetBrains Mono"
            font.pixelSize: 10
            font.bold: true
            letterSpacing: 2
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Ð“ÐžÐ¡Ð£Ð”ÐÐ Ð¡Ð¢Ð’Ð•ÐÐÐ«Ð™ Ð˜ÐÐ¡Ð¢Ð˜Ð¢Ð£Ð¢ Ð¡ÐŸÐ•Ð¦Ð˜ÐÐ›Ð¬ÐÐ«Ð¥ Ð˜Ð¡Ð¡Ð›Ð•Ð”ÐžÐ’ÐÐÐ˜Ð™"
            color: "#5c6370"
            font.family: "JetBrains Mono"
            font.pixelSize: 9
        }
    }

    // â”€â”€â”€ LOGIN FORM (BOTTOM CENTER) â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 120
        spacing: 16

        // User field
        Rectangle {
            width: 300
            height: 40
            color: "#22262e"
            border.color: usernameInput.activeFocus ? "#5e81ac" : "#3d4250"
            border.width: 1
            radius: 2

            TextInput {
                id: usernameInput
                anchors.fill: parent
                anchors.margins: 10
                color: "#c8cdd5"
                font.family: "JetBrains Mono"
                font.pixelSize: 12
                clip: true
                text: sddm.lastUser ?? ""
                focus: true

                KeyNavigation.next: passwordInput

                onAccepted: {
                    sddm.login(usernameInput.text, passwordInput.text)
                }

                Text {
                    anchors.fill: parent
                    anchors.verticalCenter: parent.verticalCenter
                    text: "OPERATOR:"
                    color: "#b85450"
                    font.family: "JetBrains Mono"
                    font.pixelSize: 12
                    font.bold: true
                    visible: !usernameInput.text && !usernameInput.activeFocus
                }
            }
        }

        // Password field
        Rectangle {
            width: 300
            height: 40
            color: "#22262e"
            border.color: passwordInput.activeFocus ? "#5e81ac" : "#3d4250"
            border.width: 1
            radius: 2

            TextInput {
                id: passwordInput
                anchors.fill: parent
                anchors.margins: 10
                color: "#c8cdd5"
                font.family: "JetBrains Mono"
                font.pixelSize: 12
                echoMode: TextInput.Password
                clip: true
                focus: false

                onAccepted: {
                    sddm.login(usernameInput.text, passwordInput.text)
                }

                Text {
                    anchors.fill: parent
                    anchors.verticalCenter: parent.verticalCenter
                    text: "ACCESS CODE:"
                    color: "#5c6370"
                    font.family: "JetBrains Mono"
                    font.pixelSize: 12
                    font.bold: true
                    visible: !passwordInput.text && !passwordInput.activeFocus
                }
            }
        }

        // Login button
        Rectangle {
            width: 300
            height: 36
            color: loginMouseArea.containsMouse ? "#8c3f3c" : "#b85450"
            radius: 2

            Text {
                anchors.centerIn: parent
                text: "AUTHENTICATE"
                color: "#1a1d23"
                font.family: "JetBrains Mono"
                font.pixelSize: 11
                font.bold: true
            }

            MouseArea {
                id: loginMouseArea
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    sddm.login(usernameInput.text, passwordInput.text)
                }
            }
        }

        // Status text
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: {
                if (sddm.noUser) return "SELECT OPERATOR"
                if (sddm.loginFailed) return "ACCESS DENIED â€” CLEARANCE LEVEL INSUFFICIENT"
                return "AWAITING AUTHENTICATION"
            }
            color: sddm.loginFailed ? "#b85450" : "#5c6370"
            font.family: "JetBrains Mono"
            font.pixelSize: 9
        }
    }

    // â”€â”€â”€ BOTTOM INFO BAR â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        spacing: 20

        Text {
            text: "FACILITY 04"
            color: "#3d4250"
            font.family: "JetBrains Mono"
            font.pixelSize: 8
        }
        Text {
            text: "Â·"
            color: "#3d4250"
            font.family: "JetBrains Mono"
            font.pixelSize: 8
        }
        Text {
            text: "CLASSIFICATION: RESTRICTED"
            color: "#3d4250"
            font.family: "JetBrains Mono"
            font.pixelSize: 8
        }
        Text {
            text: "Â·"
            color: "#3d4250"
            font.family: "JetBrains Mono"
            font.pixelSize: 8
        }
        Text {
            text: "UN-04-SDDM-001"
            color: "#3d4250"
            font.family: "JetBrains Mono"
            font.pixelSize: 8
        }
    }

    // â”€â”€â”€ SESSION/POWER BUTTONS (BOTTOM RIGHT) â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
    Row {
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 20
        spacing: 10

        // Reboot
        Rectangle {
            width: 28
            height: 28
            color: rebootMouseArea.containsMouse ? "#2a2e37" : "transparent"
            border.color: "#3d4250"
            border.width: 1
            radius: 2

            Text {
                anchors.centerIn: parent
                text: "â†»"
                color: rebootMouseArea.containsMouse ? "#5e81ac" : "#5c6370"
                font.pixelSize: 14
            }

            MouseArea {
                id: rebootMouseArea
                anchors.fill: parent
                hoverEnabled: true
                onClicked: sddm.reboot()
            }
        }

        // Shutdown
        Rectangle {
            width: 28
            height: 28
            color: shutdownMouseArea.containsMouse ? "#2a2e37" : "transparent"
            border.color: "#3d4250"
            border.width: 1
            radius: 2

            Text {
                anchors.centerIn: parent
                text: "â»"
                color: shutdownMouseArea.containsMouse ? "#b85450" : "#5c6370"
                font.pixelSize: 14
            }

            MouseArea {
                id: shutdownMouseArea
                anchors.fill: parent
                hoverEnabled: true
                onClicked: sddm.shutdown()
            }
        }
    }
}
