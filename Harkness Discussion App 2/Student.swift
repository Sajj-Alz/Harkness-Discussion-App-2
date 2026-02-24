//
//  Student.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 11/10/25.
//

import Foundation
import SwiftData
@Model //takes the class and turns it into a data model
class Student{
    private var interactions:[Interaction]
    private var idInt: Int //might change this to a String name if asked to
    
    //Full Constructor
    init(interactions: [Interaction], idInt: Int) {
        self.interactions = interactions
        self.idInt = Int //Confused on whats wrong
    }
    //Parameterless Constructor (Default)
    init(){
        self.interactions = []
        self.idInt = -1 //
    }
    public func getInteractions() -> [Interaction]{
        return self.interactions
    }
    
    public func getIdInt() -> Int{
        return self.idInt
    }
    
    public func addInteraction(_ interaction: Interaction){
        self.interactions.append(interaction)
    }
    
    public func setInteractions(_ interactions: [Interaction]){
        self.interactions = interactions
    }
    
    public func setIdInt(_ idInt: Int){
        self.idInt = idInt
    }
    
}
