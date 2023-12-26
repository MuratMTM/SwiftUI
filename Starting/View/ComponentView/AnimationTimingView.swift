

import SwiftUI
import Kingfisher

enum ImageURL {
    static let flutterLogo = "https://css-tricks.com/wp-content/uploads/2022/08/flutter-clouds.jpg"
    static let swiftUILogo = "https://bignerdranch.com/wp-content/uploads/2021/05/swiftui-logo.jpg"
    static let jetpackComposeLogo = "https://miro.medium.com/v2/resize:fit:1200/1*YMO9lbZTAkvLVuASXFbRIA.png"
}

struct AnimationTimingView: View {
    
    @State private var isMoving: Bool = false
    
    @State private var degree = 0.0
    @State private var mirrorAngle: Double = 0.0
    @State private var isMirrored: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 15) {
                    KFImage(URL(string: ImageURL.flutterLogo))
                        .resizable()
                        .frame(width: 380, height: 150)
                        .rotationEffect(.degrees(degree))
                        .animation(.linear(duration: 1.3), value: degree)
                        .cornerRadius(20)
                        .padding(.all)
                    
                    Button("Rotate") {
                        degree = (degree == 0) ? 360 : 0
                    }
                    .buttonStyle(.bordered)
                    .brightness(0.2)
                    .bold()
                    
                    KFImage(URL(string: ImageURL.swiftUILogo))
                        .resizable()
                        .frame(width: 390, height: 130)
                        .rotationEffect(.degrees(mirrorAngle), anchor: .bottom)
                        .cornerRadius(10)
                    
                    Button(action: {
                        withAnimation(.easeOut(duration: 2.0)) {
                            mirrorAngle += 360.0
                        }
                    }) {
                        Text("Circular")
                            .font(.headline)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.purple)
                            .cornerRadius(10)
                    }
                    
                    KFImage(URL(string: ImageURL.jetpackComposeLogo))
                        .resizable()
                        .frame(width: 400, height: 130)
                        .scaleEffect(x: isMirrored ? -1 : 1, y: 1)
                        .padding()
                    
                    Button(action: {
                        withAnimation {
                            isMirrored.toggle()
                        }
                    }) {
                        Text("Mirror Effect")
                            .font(.subheadline)
                            .bold()
                            .padding()
                            .foregroundColor(.green)
                            .background(Color.black)
                            .cornerRadius(15)
                    }
                }
            }
            .navigationTitle("Frameworks")
            .underline()
        }
    }
}

struct AnimationTimingView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingView()
    }
}
