//
//  ContentView.swift
//  WarCardGame
//
//  Created by Grace Subianto on 12/05/20.
//  Copyright © 2020 Grace Subianto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 2
    @State private var randNum2 = 2
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    
                    Image("card" + String(randNum1))
                    Image("card" + String(randNum2))
                    
                    
                }
                Spacer()
                
                Button(action: {
                    //Randomise the randNum1 and randNum2 state properties
                    self.randNum1 = Int.random(in: 2...14)
                    self.randNum2 = Int.random(in: 2...14)
                    
                }) {
                    Image("dealbutton").renderingMode(.original)
                }
                Spacer()
                
                HStack{
                    VStack{
                        Text("player score").bold().padding(.bottom, 20)
                        Text("0")
                    }.padding(.leading, 20).foregroundColor(.white)
                    Spacer()
                    VStack{
                        Text("cpu score")
                        Text("0")
                        
                    }.padding(.trailing, 20).foregroundColor(.white)
                }
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
