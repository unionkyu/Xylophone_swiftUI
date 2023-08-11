//
//  XylophoneView.swift
//  Xylophone-SwiftUI
//
//  Created by hyunkyu yoon on 2023/08/11.
//

import SwiftUI

struct XylophoneView: View {
  
  let buttons: [(soundName: String, horizontalPadding: CGFloat, backgroundColor: Color, text: String)] = [
          ("C", 170, .red, "도"),
          ("D", 160, .orange, "레"),
          ("E", 150, .yellow, "미"),
          ("F", 140, .green, "파"),
          ("G", 130, .blue, "솔"),
          ("A", 120, .indigo, "라"),
          ("B", 110, .purple, "시"),
          ("C_high", 100, .red, "도")
      ]
  
    var body: some View {
      VStack(alignment:.center, spacing: 14) {
        ForEach(buttons, id: \.soundName) { button in
          XylophoneButton(soundName: button.soundName , horizontalPadding: button.horizontalPadding, backgroundColor: button.backgroundColor, text: button.text)
        }
        }
    }
}

struct XylophoneView_Previews: PreviewProvider {
    static var previews: some View {
        XylophoneView()
    }
}

