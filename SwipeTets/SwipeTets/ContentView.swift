//
//  ContentView.swift
//  SwipeTets
//
//  Created by Erkut Cetiner on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    private var people:[String] = ["Mario","Luigi","Turtle","Toad"]
    
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(people, id: \.self) { person in
                    CardView(person:person)
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
