//
//  ContentView.swift
//  Communication-Demo WatchKit Extension
//
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var manager = WatchConnectivityManager.shared
    
    var body: some View {
        VStack {
            NavigationLink("Find my IPAddress", destination: IPAddressView())
                .foregroundColor(.green)
            
            NavigationLink("Messages In Queue", destination: MessageQueue())
                .foregroundColor(.blue)
            
            Divider()
            
            Text(manager.notificationMessage?.text ?? "")
                .font(.footnote)
        }
        .padding(.horizontal)
        .navigationTitle("Communication")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
