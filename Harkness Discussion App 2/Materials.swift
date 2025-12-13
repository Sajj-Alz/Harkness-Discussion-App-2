//
//  Materials.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 11/10/25.
//

import Foundation
import SwiftData
@Model //takes the class and turns it into a data model
class Material{
    private var materialType:String // based on file type
    private var materialName:String
    private var materialDescription:String // user gets a pop up when they add a material
    // private var material:File, File as a complex data type does not exist
    
    init(materialType:String, materialName:String, materialDescription:String){
        self.materialType = materialType
        self.materialName = materialName
        self.materialName = materialDescription
    }
    
    public func getMaterialType() -> String{
        return self.materialType
    }
    
    public func getMaterialName() -> String{
        return self.materialName
    }
    
    public func getMaterialDescription() -> String{
        return self.materialDescription
    }
    
    public func setMaterialDescription(_ newDescription:String){
        self.materialDescription = newDescription
    }
    
    public func setMaterialName(_ newName:String){
        self.materialName = newName
    }
    
    public func setMaterialType(_ newType:String){
        self.materialType = newType
    }
}
