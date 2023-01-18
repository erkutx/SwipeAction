//
//  ContentView.swift
//  SwipeAction
//
//  Created by Erkut Cetiner on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var nameList = []
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
