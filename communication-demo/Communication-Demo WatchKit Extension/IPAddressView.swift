//
//  IPAddressView.swift
//  Communication-Demo WatchKit Extension
//
//

import SwiftUI

struct IPAddressResponseModel:Codable {
    let ip:String
}

struct IPAddressView: View {
    @State private var ipAddress:String = ""
    var body: some View {
        Text("My IP Address is " + ipAddress)
            .font(.headline)
            .task {
                do {
                    let (data, _) = try await URLSession.shared.data(from: URL(string:"http://ip.jsontest.com/")!)
                    let decodedResponse:IPAddressResponseModel = try JSONDecoder().decode(IPAddressResponseModel.self, from: data)
                    OperationQueue.main.addOperation {
                        self.ipAddress = decodedResponse.ip
                    }
                } catch {
                    
                }
            }
    }
}

struct IPAddressView_Previews: PreviewProvider {
    static var previews: some View {
        IPAddressView()
    }
}
