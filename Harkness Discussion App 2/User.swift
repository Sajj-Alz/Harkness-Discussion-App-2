//
//  User.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 11/10/25.
//

import Foundation
import SwiftData
@Model //takes the class and turns it into a data model
class User{ //this is the teacher
    private var accountType:String //guest or permanent
    private var discussions:[Discussion]? // if user is guest there is no assigned value
    private var email:String? // if user is guest there is no assigned value
    private var password:String? // if user is guest there is no assigned value
    
    
    init(type:String){
        self.accountType="guest" // If they are guest users
    }
    
    init(discussions:[Discussion], email:String, password:String){
        self.accountType="permanent"
        self.discussions=discussions
        self.email=email
        self.password=password
    }
    
    
    public func getType() -> String{
        return self.accountType
    }
    public func getDiscussions() -> [Discussion]{
        // if there is no list of saved discussions (user is a guest) then the default return will be an empty array
        return self.discussions ?? [] // provides a default condition is there is no value for discussions
    }
    public func addDiscussion(_ discussion:Discussion){ // makes sure that there is a value for discussions and there is an array of type Discussion
        discussions = (discussions ?? []) + [discussion]
    }
    
    public func setEmail(_ email:String){
        self.email=email
    }
    
    public func getEmail() -> String?{
        return self.email ?? "" // provides a default condition is there is no value for email
    }
    
    public func getPassword(_ password:String){
        self.password=password
    }
    
    public func getPassword() -> String?{
        return self.password ?? "" // provides a default condition is there is no value for email
    }
}
