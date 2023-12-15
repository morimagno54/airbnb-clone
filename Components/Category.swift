import SwiftUI

struct Category: View {
    var icon: String
    var text: String
    var body: some View {
        VStack {
            Image(icon)
                .font(.system(size: 30))
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
            
            Text(text)
                .padding(.top,5)
                .font(.system(size: 12, weight: .bold))
        }
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(icon: "home", text: "OMG!")
    }
}
