import QtQuick
import Quickshell
import "./bar/"
import Niri 

ShellRoot {
   id: root
   
   Niri {
      id: niri
      Component.onCompleted: connect()

      onConnected: console.info("Connected to niri")
      onErrorOccurred: function(error) {
         console.error("Niri error:", error)
      }
   }

   Loader {
      active: true
      sourceComponent: Bar{}
   }
}
