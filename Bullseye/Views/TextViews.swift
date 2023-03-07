import SwiftUI

struct InstructionText: View {
  var text: String
  
    var body: some View {
      Text(text.uppercased())
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(2.0)
        .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .font(.title2)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  var body: some View {
    Text(text)
      .fontWeight(.black)
      .kerning(-1.0)
      .foregroundColor(Color("TextColor"))
  }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        InstructionText(text: "Instructions")
        BigNumberText(text: "999")
        SliderLabelText(text: "99")
      }
    }
}
