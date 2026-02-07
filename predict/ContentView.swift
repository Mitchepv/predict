//
//  ContentView.swift
//  predict
//
//  Created by Nia Mitchell on 2/7/26.
//

import SwiftUI

struct ContentView: View {
    @State private var choiceArray = [ "It is certain","It is decidedly so", "Without a doubt", "Yes, definitely",
    "You may rely on it","As I see it, yes","Most likely","Outlook good","Yes","Signs point to yes","Reply hazy try again", "Ask again later", "Better not tell you now","Cannot predict now", "Concentrate and ask again","Don't count on it","My reply is no", "My sources say no",  "Outlook not so good", "Very doubtful" ]
    @State private var prediction = ""
    var body: some View {
        VStack {
            
            ZStack{
                Image("predict-ball-image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                
                Circle()
                    .frame(width: 140, height: 140)
                    .foregroundStyle(.indigo)
                    .offset(y: -20)
                
                Text (prediction)
                    .font(.largeTitle)
                    .minimumScaleFactor(0.5)
                    .foregroundStyle(.white)
                    .background(.orange)
                    .multilineTextAlignment(.center)
                    .frame(width: 90 , height: 100)
                    .offset(y: -20)
                    .animation(.default , value: prediction)
            }
                
            
            Button("Hit Me!"){
                prediction = choiceArray.randomElement() ?? "No elements avaialable"
            }
            .font(.title2)
            .buttonStyle(.glassProminent)
            .tint(.indigo)

            
            
           
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
