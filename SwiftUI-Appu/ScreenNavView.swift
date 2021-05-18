//
//  ScreenNavView.swift
//  SwiftUI-Appu
//
//  Created by Mohammed Audhil S on 18/05/21.
//

import SwiftUI

struct ScreenNavView : View {
    
    var body: some View {
        NavigationView {
            VStack{
                CircleNumberView(color: .blue, number: 1)
                    .navigationTitle("Blue One")
                    //                    .navigationBarTitle("Blue One", displayMode: .inline)   //  old navigation title
                    .offset(y: -60)
                
                NavigationLink(
                    destination: RedTwoView(),
                    label: {
                        Text("Next")
                            .bold()
                            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
            }
        }.accentColor(Color(.label))
    }
}

struct RedTwoView : View {
    
    var body: some View {
        VStack{
            CircleNumberView(color: .red, number: 2)
                .navigationTitle("Red Two")
                .offset(y: -60)
            
            NavigationLink(
                destination: Text("Last screen"),
                label: {
                    Text("Next")
                        .bold()
                        .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
        }
    }
}


struct CircleNumberView : View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(color)
            
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight:.bold))
        }
    }
}
