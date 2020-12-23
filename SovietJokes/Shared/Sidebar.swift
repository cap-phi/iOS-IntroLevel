//
//  Sidebar.swift
//  SovietJokes
//
//  Created by Tian Wu on 18/12/20.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            #if os(iOS)
            content
                .navigationTitle("JOKES")
            #else
            content
                .frame(minWidth: 150, idealWidth: 200, maxWidth: 300)
            #endif
            
            JokesView()
        }
    
    }
    var content: some View {
        List {
            NavigationLink(
                destination: JokesView()) {
                Label("Areas", systemImage: "tortoise")
            }
            Label("Figures", systemImage: "rectangle.stack.person.crop")
            Label("New Era", systemImage: "network")
        }
        .listStyle(SidebarListStyle())
        
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
