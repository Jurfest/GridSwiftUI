//
//  ContentView.swift
//  GridSwiftUI
//
//  Created by Diego Jurfest Ceccon on 11/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue: CGFloat = 1
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                List {
                    
                    // rows
                    ForEach(0..<5) { _ in
                        
                        HStack {
                            
                            // columns
                            ForEach(0..<2) { _ in
                                
                                Image("football-ball").resizable().scaledToFit()
                                
                            }
                            
                            
                        }
                        
                        
                    }
                }
            }
        .navigationBarTitle("Futebol")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
