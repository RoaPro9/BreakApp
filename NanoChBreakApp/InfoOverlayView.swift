
//

import SwiftUI

struct InfoOverlayView: View {
    let infoMessage: String
    let buttonTitle: String
    let systemImageName: String
    let action: () -> Void
  

    @StateObject private var notificationManager = NotificationManger()
    var body: some View {
        VStack {
            Text(infoMessage)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            Button {
                alarmSheet( notificationManager: notificationManager
                          )
                action()
            } label: {
                Label(buttonTitle, systemImage: systemImageName).foregroundColor(.white)
                
            }
//            }.sheet(isPresented: ) {
//                alarmSheetView( notificationManager: notificationManager
//                )
//            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(5)
        }
        .padding()
    }
}

struct InfoOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        InfoOverlayView(infoMessage: "", buttonTitle: "", systemImageName: "", action: {})
    }
}
