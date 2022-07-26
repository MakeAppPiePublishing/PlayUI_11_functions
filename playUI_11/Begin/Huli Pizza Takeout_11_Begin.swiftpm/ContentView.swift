import SwiftUI
//
struct ContentView: View {
    var bannerImage:String = surfgirl
    var color = Color.green
    var title:String
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle).bold()
            Image(bannerImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            Divider()
            MenuItemView(isTitle:true,isVertical: true).padding(.leading)
            MenuItemView().padding(.leading)
            MenuItemView(imageName: bannerImage, isTitle: true,isVertical: true).padding(.leading)
            MenuItemView(imageName: bannerImage).padding(.leading)
            Spacer()
            
        }
        .background(color)
    }
}
