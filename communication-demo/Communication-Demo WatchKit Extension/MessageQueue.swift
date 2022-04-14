//
//  MessageQueue.swift
//  Communication-Demo WatchKit Extension
//
//

import SwiftUI

struct MessageQueue: View {
    @ObservedObject private var manager = WatchConnectivityManager.shared
    
    var body: some View {
        List {
            Section {
                ForEach(self.manager.messageQueue, id:\.self) { message in
                    Text(message)
                }
            } header: {
                Text("Messages Queue")
            }
        }
    }
}

struct MessageQueue_Previews: PreviewProvider {
    static var previews: some View {
        MessageQueue()
    }
}
