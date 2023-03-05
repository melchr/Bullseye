//
//  ContentView.swift
//  Bullseye
//
//  Created by Mel C on 3/4/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO\n🎯🎯🎯")
      Text("89")
      Slider(value: .constant(50), in:1.0...100.0)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
