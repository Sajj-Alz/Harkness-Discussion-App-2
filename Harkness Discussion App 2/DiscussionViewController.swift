//
//  DiscussionViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI
import SwiftData
final class DiscussionMaterialsViewController:UIViewController, UITabBarDelegate {
        var modelContext: ModelContext? //Allows for accessing of @Models (Databasing from SwiftData)
        @IBOutlet weak var discussionTabBar: UITabBar! // the controller for the tabs in the tab bar present on all discussion views
        @IBOutlet weak var discussionMaterials: UITabBarItem! // the representation of the tab bar item (the page of discussion materials) (present on all discussion views)
        @IBOutlet weak var linkMap: UITabBarItem! // the the representation of the tab bar item (the page of the link map) (present on all discussion views)
        @IBOutlet weak var evaluation: UITabBarItem! // the the representation of the tab bar item (the page of the evaluation) (present on all discussion views) note: needs to finished
        @IBOutlet weak var totalVerticalStackView: UIStackView! // the vertical stack view containing all the main options (title, description, add materail,and selected materials table)
        @IBOutlet weak var titleHorizontalStackView: UIStackView! // the (first) horizontal stack view containing the label asking for a discussion title and the associated text field
        @IBOutlet weak var titleLabel: UILabel! // the label asking for the discussion title
        @IBOutlet weak var titleTextField: UITextField! // the text field where said title would be inputed
        @IBOutlet weak var descriptionHorizontalStackView: UIStackView! // the (second) horizontal stack view containing the label asking for a discussion description and the associated text field
        @IBOutlet weak var descriptionLabel: UILabel! // the label asking for the discussion description
        @IBOutlet weak var descriptionTextView: UITextView! // the text area holding the discussion description
        @IBOutlet weak var addMaterialButton: UIButton! // the button to add another material
        @IBOutlet weak var selectedMaterialsLabel: UILabel! // the label before the table of materials added to the discussion
        @IBOutlet weak var selectedMaterialsTableView: UITableView! // the label before the table of materials added to the uploaded
        @IBOutlet weak var tableDescriptionVerticalStackView: UIStackView! // the vertical stack view containing the labels for each column for a material already assigned to a discussion (its name,type(file type), and its description)(IN THAT ORDER) and the cells below
         @IBOutlet weak var tableDescriptionHorizontalStackView: UIStackView! // the vertical stack view sperating the labels for each column for a material already assigned to a discussion (its name,type(file type), and its description)(IN THAT ORDER)
        @IBOutlet weak var selectedMaterialsNameLabel: UILabel! // the label serving as the column heading (name) for the table of materials added to the discussion
        @IBOutlet weak var selectedMaterialsTypeLabel: UILabel! // the label serving as the column heading (file type) for the table of materials added to the discussion
        @IBOutlet weak var selectedMaterialsDescriptionLabel: UILabel! // the label serving as the column heading (material description) for the table of materials added to the discussion
    @IBAction func addMaterialButtonTapped() {
        let storyboard = UIStoryboard(name: "Discussion", bundle: nil) // setting the storyboard to the discussion storyboard
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "DiscussionMaterialsPopUp") as! UIViewController // to load the storyboard to the pop up page
        
        secondViewController.modalPresentationStyle = .fullScreen //ensures that the guest screen does not appear as a pop up but as a new full screen
        
        // Present the new view controller
        self.present(secondViewController, animated: true, completion: nil)
        
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
       let secondViewController = storyboard.instantiateViewController(withIdentifier: "DiscussionMaterialsView") as! UIViewController // to load the storyboard to the pop up page
       
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
        discussionTabBar.delegate = self
        // Do any additional setup after loading the view.
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate, let container = appDelegate.modelContainer {
                    modelContext = ModelContext(container)
                }
    }
}

