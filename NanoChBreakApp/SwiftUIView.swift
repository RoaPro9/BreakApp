import SwiftUI
import Messages

struct MemojiView: UIViewRepresentable {
  func makeUIView(context: Context) -> MSStickerView {
    // Create a new Memoji sticker.
      let sticker = MSSticker(contentsOfFileURL: URL(string: "path/to/sticker/image") ?? <#default value#>, localizedDescription: "My Memoji")
    
    // Create a sticker view to display the Memoji.
    let stickerView = MSStickerView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    stickerView.sticker = sticker
    return stickerView
  }

  func updateUIView(_ uiView: MSStickerView, context: Context) {}
}

struct MemojiView_: View {
  var body: some View {
    VStack {
      MemojiView()
      Text("Instructions go here")
      Button(action: {
        // Advance to the next set of instructions.
      }) {
        Text("Next")
      }
    }
  }
}
