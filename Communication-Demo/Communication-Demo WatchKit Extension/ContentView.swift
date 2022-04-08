//
//  ContentView.swift
//  Communication-Demo WatchKit Extension
//
//  Created by Charles Edge on 07/04/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var manager = WatchConnectivityManager.shared
    
    var body: some View {
        VStack {
            Text(manager.notificationMessage?.text ?? "No Message Received Yet")
                .padding()
            
            Button {
                manager.send("Dummy Message Being Sent")
            } label: {
                Text("Send Temp Message")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
