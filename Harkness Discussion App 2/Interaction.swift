//
//  Interaction.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 11/10/25.
//

import Foundation
import SwiftData
@Model //takes the class and turns it into a data model
class Interaction{
    private var connotation: Bool // true means its a positive interaction false means its a negative interaction
    private var type: Character //, Might change to characterset or full String: O=open, A,f=affirm, C,h=challenge, A,s = ask a clarifying question, + = refer to the text, T/? = test understanding(can be done through a provocative question), D (Def) = define terms, Dev = create idea with new material, Cl/! = Clarify differences of opinion, T/-->=transition to new topic, R=returns to old points, Synth/-^ = synthesize seemingly disparate points, Cr = create closure, Δ= refers to rhetoric, C = meaningful connection, 🚫 = goes off topic, 😐= disrespectful/agressive
    private var date: Date? // precise time of the interaction if the user uploads a link map (I will not expect the user to provide time information of each interaction (hence the optional type date)) or the data cannot be received in time the date is an optional
    
    init(connotation: Bool, type: Character, date: Date) {
        self.connotation = connotation
        self.type = type
        self.date = date
    }
    
    init(connotation: Bool,type: Character){
        self.connotation = connotation
        self.type = type
        self.date = Date() //Current date incase of waiting for the data from the live link map to come in
    }
    
    // the following method will be implemented within a method that searches through an uploaded link map
    init(type: Character,connotation: Bool){
        self.connotation = connotation
        self.type = type
        // when the user uploads a link map that has already been developed (as in not created on the app)
    }
}
