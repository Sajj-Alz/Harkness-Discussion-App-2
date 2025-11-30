//
//  ModelContainer.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 19/11/25.
//

import Foundation
import SwiftData

class DataManager{ //class to manage a database
    static let sharedDataManager = DataManager() //calling an instance of the class
    let modelContainer: ModelContainer // a container that holds @Models (takes the class and turns it into a data model
    private init() {
        do {
            modelContainer = try ModelContainer()
        } catch {
            fatalError("Failed to create ModelContainer: \(error)") //do catch (incase there is an issue)
        }
    }
}
