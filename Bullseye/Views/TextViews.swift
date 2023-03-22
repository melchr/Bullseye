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

struct LabelText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .kerning(1.5)
      .font(.caption)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct BodyText: View {
  var text: String
  var body: some View {
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12)
  }
}

struct ButtonText: View {
  var text: String
  var body: some View {
    Text(text)
      .bold()
      .padding()
      .frame(maxWidth: .infinity)
      .background(
        Color.accentColor
      )
      .foregroundColor(.white)
      .cornerRadius(12)
  }
}

struct ScoreText: View {
  var score: Int
  var body: some View {
    Text(String(score))
  }
}

struct DateText: View {
  var date: Date
  var body: some View {
    Text(date, style: .time)
  }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        InstructionText(text: "Instructions")
        BigNumberText(text: "999")
        SliderLabelText(text: "99")
        LabelText(text: "Score")
        BodyText(text: "You scored 200 Points\n 😜😜😜")
        ButtonText(text: "Start New Round")
        ScoreText(score: 459)
        DateText(date: Date())
      }
      .padding()
    }
}
