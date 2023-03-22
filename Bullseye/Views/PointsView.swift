import SwiftUI

struct PointsView: View {
    var body: some View {
      Color.gray
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
      PointsView()
      PointsView()
        .preferredColorScheme(.dark)
        .previewInterfaceOrientation(.landscapeRight)
    }
}
