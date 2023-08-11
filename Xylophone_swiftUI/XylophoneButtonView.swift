//
//  XylophoneButton.swift
//  Xylophone-SwiftUI
//
//  Created by hyunkyu yoon on 2023/08/11.
//

import SwiftUI
import AVFAudio

struct XylophoneButton: View {
  
  @State var player: AVAudioPlayer!
  
  let soundName: String
  let horizontalPadding: CGFloat
  let backgroundColor: Color
  let text: String
  
  func playSound(soundName: String) {
    if let url = Bundle.main.url(forResource: soundName, withExtension: "wav") {
      player = try? AVAudioPlayer(contentsOf: url)
      player.play()
    }
  }
  
    var body: some View {
      Button {
        playSound(soundName: soundName)
      } label: {
        Text(text)
          .font(.system(size: 35, weight: .bold, design: .rounded))
          .foregroundColor(.white)
          .padding(.vertical,6)
          .padding(.horizontal, horizontalPadding)
          .background(Capsule().fill(backgroundColor))
      }
      
    }
}

struct XylophoneButton_Previews: PreviewProvider {
    static var previews: some View {
      XylophoneButton(soundName: "C", horizontalPadding: 170, backgroundColor: .orange, text: "도")
    }
}

