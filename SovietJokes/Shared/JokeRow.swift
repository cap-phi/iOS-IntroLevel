//
//  JokeRow.swift
//  SovietJokes
//
//  Created by Tian Wu on 18/12/20.
//

import SwiftUI

struct JokeRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "hammer.fill")
                .renderingMode(.template)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.medium)
                .background(Color.pink)
                .clipShape(Circle())
                .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 4.0) {
                Text("Soviet").font(.subheadline)
                    .bold()
                Text("Description").font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        
    }
}

struct JokeRow_Previews: PreviewProvider {
    static var previews: some View {
        JokeRow()
    }
}
