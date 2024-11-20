import SwiftUI

struct SwiftUIView: View {
    var body: some View  {
        Image("icon").resizable().frame(width: 100, height: 100 ).clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

struct LogCircleImage: View {
    var body: some View  {
        Image("login").resizable().frame(width: 100, height: 100 ).clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LogCircleImage()
    }
}
