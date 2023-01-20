//
//  ContentView.swift
//  SwipeActionToDoApp
//
//  Created by Erkut Cetiner on 1/20/23.
//

import SwiftUI

struct ContentView: View {
    let items = [
        " Go Gym",
        "Finish The CODE",
        "GO SHOPPING",
        "WATCH THE GAME",
        "Do laundry"
        
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id:\.self) { item in
                    Text(item)
                }
            }
            .navigationTitle("To Do List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
