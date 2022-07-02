import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    property int channelNum: 0;
    width: 240
    height: 680
    visible: true
    title: qsTr("Remote Control")
    Column
    {
    Grid
    {
        columns : 3
        Button
        {
            width: 80
            height: 80
            text: "1"
            onClicked: {
                channelNum = 1;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "2"
            onClicked: {
                channelNum = 2;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "3"
            onClicked: {
                channelNum = 3;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "4"
            onClicked: {
                channelNum = 4;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "5"
            onClicked: {
                channelNum = 5;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "6"
            onClicked: {
                channelNum = 6;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "7"
            onClicked: {
                channelNum = 7;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "8"
            onClicked: {
                channelNum = 8;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "9"
            onClicked: {
                channelNum = 9;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "next\nchannel"
            onClicked: {
                if (channelNum==9)
                {
                    channelNum=0
                }
                else {
                    channelNum++
                }
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "0"
            onClicked: {
                channelNum = 9;
                channel.text = channelNum;
            }
        }
        Button
        {
            width: 80
            height: 80
            text: "prev\nchannel"
            onClicked: {
                if (channelNum==0)
                {
                    channelNum=9
                }
                else {
                    channelNum--
                }
                channel.text = channelNum;
            }
        }
    }
    Row
    {

        width: 240
        height: 80
        Button
        {
            width: 120
            height: 80
            text: "volume up"
            onClicked: { volume.value = volume.value + 0.1;}

        }
        Button
        {
            width: 120
            height: 80
            text: "volume down"
            onClicked: { volume.value = volume.value - 0.1;}
        }
    }
    Rectangle
    {
        width: 240
        height: 80
        border.color: "lightsteelblue"
        border.width: 4
        radius: 8
        Text
        {
            id: channel
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 16
            text: qsTr("channel not chosen")
        }
    }
    ProgressBar
    {
        id: volume
        width: 240
        height: 80
        value: 0.3
    }
    }
}
