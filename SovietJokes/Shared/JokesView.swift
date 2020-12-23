//
//  JokesView.swift
//  SovietJokes
//
//  Created by Tian Wu on 18/12/20.
//

import SwiftUI

struct JokesView: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        
        #else
        content
            .frame(minWidth: 900, minHeight: 600)
        
        #endif
    }
    
    var content: some View {
        List(0 ..< 20) { item in
            JokeRow()
        }
        .navigationTitle("Jokes")
    }
    
}

struct JokesView_Previews: PreviewProvider {
    static var previews: some View {
        JokesView()
    }
}
