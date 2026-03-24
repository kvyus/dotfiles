import Quickshell
import QtQuick.Layouts
import QtQuick


Rectangle{
   id: workspacesrect
   implicitWidth: row.width + 10
   implicitHeight: 29
   radius: 7
   color: "#3a4150"
   
   Row {
      id: row
      anchors.centerIn: parent
      spacing: 5
      Repeater {
	 model: niri.workspaces
	 Item {
	    implicitHeight: 21
	    implicitWidth: 21
	    y: 0
	    visible: index != 6
	    Rectangle {
	       anchors.fill: parent
	       radius: 7
	       color: model.isFocused ? "#81a1c1" : "transparent"
	       Text {
		  text: model.name
		  anchors.centerIn: parent
		  font.pixelSize: 15
		  font.family: myfont
		  color: textcolor
	       }
	    }
         }
      }
   }
}
