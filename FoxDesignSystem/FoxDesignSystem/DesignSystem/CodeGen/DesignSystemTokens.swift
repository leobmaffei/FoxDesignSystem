//this file was generated

import UIKit

struct DesignSystem {
   struct color {
      struct neutral {
         let dark = "#000000".hexStringToUIColor()
         let light = "#000000".hexStringToUIColor()
         let darkest = "#000000".hexStringToUIColor()
         let lightest = "#000000".hexStringToUIColor()
      }
      struct extended {
      }
      struct primary {
         let main = "#000000".hexStringToUIColor()
         let interactive = "#ffffff".hexStringToUIColor()
      }
      struct secondary {
         let foreground = "#000000".hexStringToUIColor()
         let success = "#000000".hexStringToUIColor()
         let warning = "#000000".hexStringToUIColor()
         let background = "#000000".hexStringToUIColor()
         let error = "#000000".hexStringToUIColor()
         let hightlight = "#000000".hexStringToUIColor()
      }
   }
   struct sizing {
      struct cell {
      }
      struct header {
      }
      struct card {
      }
      struct icon {
      }
   }
   struct font {
      struct brand {
         let heavy = "Gill Sans-Bold"
         let light = "Gill Sans-Light"
         let medium = "Gill Sans-Medium"
      }
      struct size {
         let s = 12
         let m = 24
         let l = 32
      }
   }
   struct spacing {
    let tight = 20
    let relaxed = 100
    let confortable = 80
    let cozy = 60
    let comopact = 40
 }

}

extension String {
    func hexStringToUIColor() -> UIColor {
        var cString:String = self.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
