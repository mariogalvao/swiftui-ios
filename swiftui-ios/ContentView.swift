//
//  ContentView.swift
//  swiftui-ios
//
//  Created by Mário Galvao on 16/09/20.
//  Copyright © 2020 Open Mind House. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showingGreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: BlueContentView()) {
                    Text("Blue")
                    .font(.title)
                    .foregroundColor(.blue)
                }
                Spacer()
                Button(action: {
                    self.showingGreen.toggle()
                }) {
                    Text("Green")
                    .font(.title)
                    .foregroundColor(.green)
                }.sheet(isPresented: $showingGreen) {
                    GreenContentView()
                }
                Spacer()
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
