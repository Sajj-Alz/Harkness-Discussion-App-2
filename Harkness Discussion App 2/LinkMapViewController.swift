//
//  LinkMapViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI
import SwiftData
final class LinkMapViewController: UIViewController,  UITabBarDelegate {
    //code from xxx (reference to be added)
    @State private var text = ""
    @State private var error: Error?
    @State private var isImporting = false
    var modelContext: ModelContext? //Allows for accessing of @Models (Databasing from SwiftData)
    //
    @IBOutlet weak var linkMapImageView: UIImageView! // the image that contains an empty link map (see apendix B for reference) that can be drawn on (through the FastDraw and pencil kit library
    @IBOutlet weak var linkMapTabBar: UITabBar! // the controller for the tabs in the tab bar present on all discussion views
    @IBOutlet weak var discussionMaterials: UITabBarItem! // the representation of the tab bar item (the page of discussion materials) (present on all discussion views)
    @IBOutlet weak var linkMap: UITabBarItem! // the the representation of the tab bar item (the page of the link map) (present on all discussion views)
    @IBOutlet weak var evaluation: UITabBarItem! // the the representation of the tab bar item (the page of the evaluation) (present on all discussion views) note: needs to finished
    @IBOutlet weak var stopwatchLabel:UILabel! // the label that will be continously updated once the start stopwatch button is pressed
    @IBOutlet weak var stopwatchButton:UIButton! // the button that will be start and stop the stopwatch
    @IBOutlet weak var uploadLinkMapButton:UIButton! // the button that will allow for the uploading of an already existing Link Map
    @IBAction func uploadLinkMapButtonPressed(_ sender: Any) {
        //code from xxx (reference to be added)
        //.fileImporter(isPresented: $isImporting,
                        //allowedContentTypes: [.image]) {
            //let result = $0.flatMap { url in
             // read(from: url)
            //}
            //switch result {
            //case .success(let text):
             // self.text += text
           // case .failure(let error):
              //self.error = error
        
    }
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
        linkMapImageView.image = UIImage(named:"Harkness Link Map")
        linkMapTabBar.delegate = self
        // modelContext = DataManager.shared.modelContainer.mainContext
    }
}
