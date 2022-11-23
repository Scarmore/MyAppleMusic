//
//  TabScreenView.swift
//  My Apple Music
//
//  Created by Danilo Cotarella on 23/11/22.
//

import SwiftUI

struct TabScreenView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{Label("Ascolta Ora" , systemImage: "play.fill")
                }
               ScopriView()
                .tabItem{Label("Scopri" , systemImage: "square.grid.2x2")
                }
            //porcoddio
        }
    }
}

struct TabScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreenView()
    }
}
