//
//  feather_dashApp.swift
//  feather dash
//
//  Created by kaito on 2023/05/17.
//

import SwiftUI

var player_status: [String: Any] = ["explosive_power": 100, "physical strength": 100, "durability": 100]
var money = 0

@main
struct feather_dashApp: App {
    var body: some Scene {
        WindowGroup {
            the_first_skin_View()
        }
    }
}
