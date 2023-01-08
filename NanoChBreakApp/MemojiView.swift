////
////  MemojiView.swift
////  NanoChBreakApp
////
////  Created by Roa Moha on 15/06/1444 AH.
////
//import SwiftUI
//import AuthenticationServices
//
////struct MemojiView: UIViewControllerRepresentable {
////    typealias UIViewControllerType = <#type#>
////
////    func makeUIViewController(context: UIViewControllerRepresentableContext<MemojiView>) -> ASMemojiConfigurationViewController {
////        // Create a new Memoji configuration view controller
////        let viewController = ASMemojiConfigurationViewController()
////        viewController.delegate = context.coordinator
////        return viewController
////    }
////
////    func updateUIViewController(_ uiViewController: ASMemojiConfigurationViewController, context: UIViewControllerRepresentableContext<MemojiView>) {
////        // Update the view controller if needed
////    }
////
////    func makeCoordinator() -> Coordinator {
////        // Create a coordinator to handle events from the view controller
////        Coordinator(self)
////    }
////
////    class Coordinator: NSObject, ASMemojiConfigurationViewControllerDelegate {
////        var parent: MemojiView
////
////        init(_ parent: MemojiView) {
////            self.parent = parent
////        }
////
////        func memojiConfigurationViewController(_ viewController: ASMemojiConfigurationViewController, didUpdateMemoji memoji: ASMemoji) {
////            // Handle updates to the Memoji
////        }
////
////        func memojiConfigurationViewControllerDidFinish(_ viewController: ASMemojiConfigurationViewController) {
////            // Handle the dismissal of the view controller
////        }
////    }
////}
//
//
////struct MemojiView: View {
////    var body: some View {
////        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
////    }
////}
//struct MemojiViewContentView: View {
//    @State private var showMemojiView = false
//    let memojiView = MemojiView(frame: .zero)
//    memojiView.tintColor = .purple
//
//    self.view.addSubview(memojiView)
//    var body: some View {
//        Button(action: {
//            // Show the Memoji view when the button is tapped
//            self.showMemojiView = true
//        }) {
//            Text("Edit Memoji")
//        }
//        .sheet(isPresented: $showMemojiView) {
//            MemojiView()
//        }
//    }
//    struct MemojiView_Previews: PreviewProvider {
//        static var previews: some View {
//            MemojiViewContentView()
//        }
//    }}
