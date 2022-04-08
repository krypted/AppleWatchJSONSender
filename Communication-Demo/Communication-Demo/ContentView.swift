//
//  ContentView.swift
//  Communication-Demo
//
//  Created by Charles Edge on 07/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var input:String = ""
    @ObservedObject private var manager = WatchConnectivityManager.shared
    var body: some View {
        NavigationView {
            VStack {
                
                ZStack(alignment:.topLeading) {
                    if input.isEmpty {
                        Text("Paste JSON Here")
                            .foregroundColor(.secondary)
                            .padding(4)
                            .padding(.top, 4.0)
                    }
                    TextEditor(text: self.$input)
                        .background(Color.blue.opacity(0.3))
                        .frame(maxHeight: 400)
                        .cornerRadius(10)
                        .onAppear {
                            UITextView.appearance().backgroundColor = .clear
                        }
                }.padding()
                
                    
                Button {
                    self.manager.send(self.input)
                } label: {
                    Text("Sent")
                }.buttonStyle(.borderedProminent)
                
                Text("Message sent is... \(manager.notificationMessage?.text ?? "N/A")")
                
            }.navigationTitle("JSON Sender Thingy")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
