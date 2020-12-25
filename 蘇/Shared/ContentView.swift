//
//  ContentView.swift
//  Shared
//
//  Created by Tian Wu on 22/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            
            HStack {
                    Spacer()
                    Image("Illustration1_Coat_of_arms_of_the_Soviet_Union")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
            }
                
        
            Text("苏联往事")
                .font(.body)
                .fontWeight(.bold)
                
            Text("placeholder")
                .font(.footnote)
                
                
        }
        .padding(.all)
        .background(Color.red)
        .cornerRadius(20.0)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewLayout(.fixed(width: 200.0, height: 200.0))
                .preferredColorScheme(.dark)
        }
    }
}
