//
//  SoccerField.swift
//  GridSwiftUI
//
//  Created by Diego Jurfest Ceccon on 12/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import Foundation
import SwiftUI

struct SoccerField: Identifiable {
    
    // In the actual application the id will come from the api
    let id = UUID()
    let name: String
    let city: String
    let state: String
    let team: String
    let imageUrl: String
}

extension SoccerField {
    
    static func all() -> [SoccerField] {
        
        return [
            SoccerField(name: "Cícero Pompeu de Toledo", city: "São Paulo", state: "SP", team: "São Paulo", imageUrl: "football-game"),
            SoccerField(name: "Palestrão", city: "São Paulo", state: "SP", team: "Palmeiras", imageUrl: "football-game"),
            SoccerField(name: "Arena Corinthians", city: "São Paulo", state: "SP", team: "Corinthians", imageUrl: "football-game"),
            SoccerField(name: "José Bastos Padilha", city: "Rio de Janeiro", state: "RJ", team: "Flamengo", imageUrl: "football-ball"),
            SoccerField(name: "Mineirão", city: "Belo Horizonte", state: "MG", team: "Cruzeiro", imageUrl: "football-ball"),
            SoccerField(name: "Beira-Rio", city: "Porto Alegre", state: "RS", team: "Internacional", imageUrl: "football-ball"),
            
        ]
    }
    
}
