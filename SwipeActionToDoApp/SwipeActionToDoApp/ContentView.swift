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
        "Do laundry",
        "Get Milk",
        "Do Homework"
        
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id:\.self) { item in
                    HStack{
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 23)
                            .foregroundColor(.blue)
                        Text(item)
                    }
                    .swipeActions {
                        Button(action: {
                            print("do something")
                        }) {
                            Image(systemName: "bell")
                        }
                        .tint(.yellow)
                    }
                    .swipeActions {
                        Button(action: {
                            print("do something")
                        }) {
                            Image(systemName: "trash")
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading) {
                        Button(action: {
                            print("do something")
                        }) {
                            Image(systemName: "gear")
                        }
                        .tint(.purple)
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
}
