//
//  AboutView.swift
//  BullsEye
//
//  Created by Kiana  on 20/08/2020.
//  Copyright © 2020 Kiana Arabpour. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    struct GeneralStyle: ViewModifier{
        func body (content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .foregroundColor(Color.black)
                .padding(.top, 20)
                .padding(.bottom, 20)
                .multilineTextAlignment(TextAlignment.center)
        }
    }
    
    struct HeaderStyle: ViewModifier{
        func body (content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.bottom, 40)
        }
    }
    
    struct TextStyle: ViewModifier{
        func body (content: Content) -> some View {
            return content
                .padding(.leading, 60)
                .padding(.trailing, 60)
        }
    }
    
    
    
    let beige = Color(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 174.0 / 255.0)
    
    
    var body: some View {
        Group{
            VStack{
                Text("🎯 Bullseye 🎯").modifier(HeaderStyle())
                
                
                Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.").modifier(TextStyle())
                Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score 🏅\n").modifier(TextStyle())
                Text("Enjoy!").modifier(TextStyle())
                Text("😊😊😊")
                

            }.navigationBarTitle("About Bullsye")
            .modifier(GeneralStyle())
            .background(beige)
        }.background(Image("Background"))
        
        
    }
}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
