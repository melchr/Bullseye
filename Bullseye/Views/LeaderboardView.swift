import SwiftUI

struct LeaderboardView: View {
  var body: some View {
    VStack(spacing: 10) {
      HeaderView()
      RowView(index: 1, score: 10, date: Date())
    }
  }
}

struct HeaderView: View {
  var body: some View {
    ZStack {
      BigBoldText(text: "Leaderboard")
      HStack {
        Spacer()
        Button {
          
        } label: {
          RoundedImageViewFilled(systemName: "xmark")
        }
      }
    }
    
  }
}

struct RowView: View {
  let index: Int
  let score: Int
  let date: Date
  
  var body: some View {
    HStack {
      RoundedTextView(text: String(index))
      Spacer()
      ScoreText(score: score)
        .frame(width: Constants.Leaderboard.scoreColumnWidth)
      Spacer()
      DateText(date: date)
        .frame(width: Constants.Leaderboard.dateColumnWidth)
    }
    .background(
      RoundedRectangle(cornerRadius: .infinity)
        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
    )
    .padding(.horizontal)
    .frame(maxWidth: Constants.Leaderboard.maxRowWidth)
  }
}

struct LeaderboardView_Previews: PreviewProvider {
  static var previews: some View {
    LeaderboardView()
      .previewInterfaceOrientation(.landscapeRight)
    LeaderboardView()
      .preferredColorScheme(.dark)
  }
}
