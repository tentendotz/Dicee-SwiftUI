//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                
                HStack {
                    Image("dice\(leftDiceNumber)")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .padding()
                    Image("dice\(rightDiceNumber)")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .padding()
                }
                .padding(.horizontal)
                Spacer()
                
                Button {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal, 30)
                }
                .background(.red, ignoresSafeAreaEdges: [])
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
