//
//  ContentView.swift
//  Bullseye
//
//  Created by Mel C on 3/4/23.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .ignoresSafeArea()
      VStack {
        Text("🎯🎯🎯\nPut the bullseye as close as you can to\n🎯🎯🎯".uppercased())
          .bold()
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
          .kerning(2.0)
          .padding(.horizontal, 30)
        Text(String(game.target))
          .fontWeight(.black)
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.largeTitle)
          .kerning(-1.0)
          .padding()
        HStack {
          Text("1")
            .bold()
            .font(.title2)
          Slider(value: $sliderValue, in:1.0...100.0)
          Text("100")
            .bold()
            .font(.title2)
        }
        .padding()
        Button("Hit me".uppercased()) {
          alertIsVisible = true
        }
        .padding(20.0)
        .background(
          ZStack {
            Color("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
          }
        )
        .foregroundColor(.white)
        .cornerRadius(21.0)
        .bold()
        .font(.title3)
        .alert(
          "Hello!",
          isPresented: $alertIsVisible,
          actions: {
            Button("Clicked") {
              
            }
          },
          message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("""
              The slider's value is \(roundedValue).
              You scored \(game.points(sliderValue: roundedValue)) points this round.
              """)
          }
        )
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
