//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Christopher Mundle on 2020-12-10.
//

import SwiftUI

@main
struct LandmarksApp: App {
	@StateObject private var modelData = ModelData()
	
    var body: some Scene {
        WindowGroup {
            ContentView()
							.environmentObject(modelData)
        }
    }
}
