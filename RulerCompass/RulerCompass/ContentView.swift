//
//  ContentView.swift
//  RulerCompass
//
//  Created by Peter Shi on 2020-06-25.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var Qs: [Q] = []
    var body: some View {
        NavigationView {
            List(Qs) { q in
                NavigationLink(destination: DrawingStuff()) {
                    VStack(alignment: .leading) {
                        Text(q.title)
                            .font(.title)
                        Text(q.sTitle)
                            .font(.subheadline)
                            .fontWeight(.thin)
                    }
                }
            }
            .navigationBarTitle(Text("Ruler Compass Problem Solutions"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Qs: testData)
    }
}
