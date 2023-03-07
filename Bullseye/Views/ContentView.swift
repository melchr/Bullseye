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
        InstructionsView(game: $game)
        HStack {
          Text("1")
            .bold()
            .font(.title2)
            .foregroundColor(Color("TextColor"))
          Slider(value: $sliderValue, in:1.0...100.0)
          Text("100")
            .bold()
            .font(.title2)
            .foregroundColor(Color("TextColor"))
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

struct InstructionsView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to\n🎯🎯🎯")
        .padding(.horizontal, 30)
      BigNumberText(text: String(game.target))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .preferredColorScheme(.dark)
      .previewDevice("iPhone 14 Pro Max")
  }
}
