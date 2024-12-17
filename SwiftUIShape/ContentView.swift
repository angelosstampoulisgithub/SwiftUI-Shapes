//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by Angelos Staboulis on 16/12/24.
//

import SwiftUI
struct ContentView: View {
    @State var completionAmountCircle:Double
    @State var completionAmountRectangle:Double
    @State var completionAmountLine:Double
    @State var completionAmountRoundedRectangle:Double

    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
            VStack{
                Text("SwiftUI Shapes").font(.largeTitle).frame(width:300,height:35,alignment:.top)
            }.frame(maxWidth:.infinity,maxHeight:.infinity,alignment: .top)
            VStack{
                Line()
                    .trim(from: 0, to: completionAmountLine)
                    .stroke(.red, lineWidth: 20)
                    .frame(width: 25, height: 25)
                    .onReceive(timer) { _ in
                        withAnimation {
                            if completionAmountLine == 1 {
                                completionAmountLine = 0
                            } else {
                                completionAmountLine += 0.2
                            }
                        }
                    }
            }
            VStack{
                Triangle()
                        .trim(from: 0, to: completionAmountRoundedRectangle)
                        .stroke(.red, lineWidth: 20)
                        .frame(width: 100, height: 100)
                        .onReceive(timer) { _ in
                                    withAnimation {
                                        if completionAmountRoundedRectangle == 1 {
                                            completionAmountRoundedRectangle = 0
                                        } else {
                                            completionAmountRoundedRectangle += 0.2
                                        }
                        }
                }
            }
            VStack{
                Circle()
                    .trim(from: 0, to: completionAmountCircle)
                    .stroke(.red, lineWidth: 20)
                    .frame(width: 100, height: 100)
                    .rotationEffect(.degrees(-90))
                    .onReceive(timer) { _ in
                        withAnimation {
                            if completionAmountCircle == 1 {
                                completionAmountCircle = 0
                            } else {
                                completionAmountCircle += 0.2
                            }
                        }
                    }
            }
            VStack{
                Rectangle()
                    .trim(from: 0, to: completionAmountRectangle)
                    .stroke(.red, lineWidth: 20)
                    .frame(width: 100, height: 100)
                    .rotationEffect(.degrees(-90))
                    .onReceive(timer) { _ in
                        withAnimation {
                            if completionAmountRectangle == 1 {
                                completionAmountRectangle = 0
                            } else {
                                completionAmountRectangle += 0.2
                            }
                        }
                    }
            }.frame(maxHeight:450,alignment: .bottom)
        }
    
    }
}

#Preview {
    ContentView(completionAmountCircle: 0.0,completionAmountRectangle:0.0, completionAmountLine: 0.0, completionAmountRoundedRectangle: 0.0)
}
