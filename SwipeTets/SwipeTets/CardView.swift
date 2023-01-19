//
//  CardView.swift
//  SwipeTets
//
//  Created by Erkut Cetiner on 1/19/23.
//

import SwiftUI

struct CardView: View {
    var person: String
    @State private var  offSet = CGSize.zero
    @State private var color: Color = .black
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 420)
                .border(.white,width: 6.0)
                .cornerRadius(4)
                .foregroundColor(color.opacity(0.9))
                .shadow(radius: 4)
            HStack {
                Text(person)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                Image(systemName: "person.fill")
                    .foregroundColor(.blue)
            }
        }
        .offset(x: offSet.width, y: offSet.height*0.4)
        .rotationEffect(.degrees(Double(offSet.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offSet = gesture.translation
                    
                } .onEnded{ _ in
                    withAnimation {
                        swipeCard(width: offSet.width)
                    }
                }
        )
    }
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(person) removed")
            offset = CGSize(width: -5000, height: 0)
        case 150...500:
            print("\(person) added")
            offset = CGSize(width: 500, height: 0)
        default:
            offSet = .zero
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(person: "Mario")
    }
}
