import SwiftUI
import Kingfisher



struct EmojiModel: Identifiable, Equatable {
    let id = UUID()
    let symbol: String
    let name: String
    let color: Color
    let imageURL: String
    
    static func == (lhs: EmojiModel, rhs: EmojiModel) -> Bool {
            return lhs.id == rhs.id
        }
}

struct MyButtonView: View {
    @State private var selectedEmoji: EmojiModel? = nil
    @State private var scale: Double = 0.85
    let defaultEmojiURL = "https://cdn.pixabay.com/photo/2020/12/19/03/01/emoji-5843458_640.png"
    
    
    let emojis: [EmojiModel] = [
        EmojiModel(symbol: "hand.thumbsup.fill", name: "like", color: .blue, imageURL: "https://www.startofhappiness.com/wp-content/uploads/2012/06/smiley-face.jpg"),
        EmojiModel(symbol: "hand.thumbsdown.fill", name: "dislike", color: .red, imageURL: "https://static-00.iconduck.com/assets.00/pleading-face-emoji-2048x1974-2h6x2dnp.png")
    ]
    
    var body: some View {
        ZStack {
            VStack {
                // Emoji Container
                HStack {
                    KFImage(URL(string: selectedEmoji?.imageURL ?? defaultEmojiURL))
                        .resizable()
                        .scaledToFill()
                        .frame(width: emojiSize, height: emojiSize)
                        .scaleEffect(scale)
                     

                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.mint, lineWidth: 2)
                )
                .padding()
                
                // Buttons
                HStack {
                    ForEach(emojis) { emoji in
                        Button(action: {
                            handleButtonTap(emoji: emoji)
                        }) {
                            LikeButtonView(emoji: emoji)
                        }
                    }
                }
                .padding()
            }
        }
    }
    
    private func handleButtonTap(emoji: EmojiModel) {
        if selectedEmoji == emoji {
            // If the same button is tapped again, deselect it and set default emoji
            selectedEmoji = nil
        } else {
            // If a different button is tapped, select it and update the emoji
            selectedEmoji = emoji
        }
    }
    
    private var emojiSize: CGFloat {
        return 150
    }
}

struct MyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonView()
    }
}

struct LikeButtonView: View {
    var emoji: EmojiModel
    
    var body: some View {
        VStack {
            Image(systemName: emoji.symbol)
                .foregroundColor(Color.white)
                .padding(.bottom, 1.0)
            
            Text(emoji.name)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 75, height: 75)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(emoji.color)
        )
    }
}

