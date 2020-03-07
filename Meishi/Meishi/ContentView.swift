//
//  ContentView.swift
//  Meishi
//
//  Created by Fernando Martin Garcia Del Angel on 07/03/20.
//  Copyright © 2020 Fernando Martin Garcia Del Angel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Background"))
                .frame(maxWidth: .infinity,  maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderCard()
                .frame(width: 300, height: 180)
                .modifier(Neomorphiser())
            }
            .padding(.top)
            .animation(Animation.linear(duration: 1))
        }
    }
}

struct GithubCard : View {
    var body: some View {
        ZStack {
            Rectangle()
            .fill(Color("Background"))
            VStack {
                Text("@A01334390")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding()
            }
        }
    }
}

struct HeaderCard : View {
    var body: some View {
            ZStack {
                Rectangle()
                .fill(Color("Background"))
                VStack {
                    Text("My name is Martin and I'm a mobile engineer")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                    HStack {
                        Button(action: {
                            print("wow")
                        }, label: {
                            Circle()
                                .fill(Color("Background"))
                                .frame(width: 50,height: 50)
                        }).modifier(Neomorphiser())
                        Button(action: {
                            
                        }, label: {
                            Circle()
                                .fill(Color("Background"))
                                .frame(width: 50,height: 50)
                        }).modifier(Neomorphiser())
                        Button(action: {
                            
                        }, label: {
                            Circle()
                                .fill(Color("Background"))
                                .frame(width: 50,height: 50)
                        }).modifier(Neomorphiser())
                        Button(action: {
                            
                        }, label: {
                            Circle()
                                .fill(Color("Background"))
                                .frame(width: 50,height: 50)
                        }).modifier(Neomorphiser())
                    }
                }
            }
        
    }
}

struct Neomorphiser : ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
            .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
