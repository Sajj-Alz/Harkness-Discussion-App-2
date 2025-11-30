//
//  DiscussionEvaluationViewController.swift
//  Harkness Discussion App 2
//
//  Created by Sajjad Alzaher on 15/11/25.
//

import UIKit
import SwiftData

class DiscussionEvaluationViewController: UIViewController, UITabBarDelegate {
    var modelContext: ModelContext? //Allows for accessing of @Models (Databasing from SwiftData)
    func tabBar (_ tabBar: UITabBar, didSelect item: UITabBarItem){
        switch item.tag{
        case 0:
            discussionMaterialsTabSelected()
            
        case 1:
            linkMapTabSelected()
        case 2:
            EvaluationTabSelected()
        default: break
        }
    }
    func discussionMaterialsTabSelected(){
        let storyboard = UIStoryboard(name: "Discussion", bundle: nil) // setting the storyboard to the discussion storyboard
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "DiscussionMaterials") as! UIViewController // to load the storyboard to the pop up page
        
        secondViewController.modalPresentationStyle = .fullScreen //ensures that the guest screen does not appear as a pop up but as a new full screen
        
        // Present the new view controller
        self.present(secondViewController, animated: true, completion: nil)
    }
    func linkMapTabSelected(){
        let storyboard = UIStoryboard(name: "Discussion", bundle: nil) // setting the storyboard to the discussion storyboard
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "DiscussionLinkMap") as! UIViewController // to load the storyboard to the pop up page
        
        secondViewController.modalPresentationStyle = .fullScreen //ensures that the guest screen does not appear as a pop up but as a new full screen
        
        // Present the new view controller
        self.present(secondViewController, animated: true, completion: nil)
    }
    func EvaluationTabSelected(){
        let storyboard = UIStoryboard(name: "Discussion", bundle: nil) // setting the storyboard to the discussion storyboard
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "DiscussionEvaluation") as! UIViewController // to load the storyboard to the pop up page
        
        secondViewController.modalPresentationStyle = .fullScreen //ensures that the guest screen does not appear as a pop up but as a new full screen
        
        // Present the new view controller
        self.present(secondViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate, let container = appDelegate.modelContainer {
                    modelContext = ModelContext(container)
                }
    }
}
