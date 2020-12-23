//
//  ContentView.swift
//  Shared
//
//  Created by Tian Wu on 18/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
                
            Spacer()
            HStack {
                Spacer()
                Image("Illustration 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text("Soviet Jokes for you")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                
            Text("5 Sections")
                .font(.footnote)
                .foregroundColor(Color.white)
                
                
        }
        .padding(.all)
        .background(Color.gray)
        .cornerRadius(20.0)
        .shadow(radius: 10)
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
