//
//  ContentView.swift
//  Bullseye
//
//  Created by Mel C on 3/4/23.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO\n🎯🎯🎯")
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(2.0)
      Text("89")
        .fontWeight(.black)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.largeTitle)
        .kerning(-1.0)
      HStack {
        Text("1")
          .bold()
          .font(.title2)
        Slider(value: $sliderValue, in:1.0...100.0)
        Text("100")
          .bold()
          .font(.title2)
      }
      Button("Hit Me") {
        alertIsVisible = true
      }
      .alert(
        "Hello!",
        isPresented: $alertIsVisible,
        actions: {
          Button("Clicked") {
            
          }
        },
        message: {
          var roundedValue: Int = Int(sliderValue.rounded())
          Text("The slider's value is \(roundedValue)")
        }
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
