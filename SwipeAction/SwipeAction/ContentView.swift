//
//  ContentView.swift
//  SwipeAction
//
//  Created by Erkut Cetiner on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var nameList = ["Lebron","Jordan","Kobe","Kyrie"]
    
    
    
    var body: some View {
        VStack {
            List {
                ForEach(nameList,id: \.self) { name in
                    Text(name)
                        .padding()
                        .swipeActions {
                            Button(role: .destructive) {
                                // TODO DELETE
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                        .swipeActions {
                            Button {
                                // TODO EDIT
                            } label: {
                                Label("Edit", systemImage: "square.and.pencil")
                            }
                            .tint(.blue)
                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                // TODO MIC
                            } label: {
                                Label("Mic", systemImage: "mic.fill")
                            }
                            .tint(.green)
                        }
                }
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
