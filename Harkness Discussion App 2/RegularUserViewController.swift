//
//  RegularUserViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI
import SwiftData
final class RegularUserViewController: UIViewController {
    var modelContext: ModelContext? //Allows for accessing of @Models (Databasing from SwiftData)
    @IBOutlet weak var verticalStackView: UIStackView! //contains the label harkness as well as the color wheel and the dark mode setting(button)
    @IBOutlet weak var harknessLabel: UILabel! //contains the label harkness
    @IBOutlet weak var horizontalStackView: UIStackView! //contains horizontal stack view to distribute the search text field (based on the title of the discussion), sort function (thinking to do it based on date (might remove)),color picker (for the background) and the night mode setting
    @IBOutlet weak var searchDiscussionsTextField: UITextField! // text field to search for discussions by name
    @IBOutlet weak var sortButton: UIButton! //button to sort by date (most recent)
    @IBOutlet weak var colorWheelView: UIColorWell! //the color wheel for the user to decide their background color
    @IBOutlet weak var nightModeButton: UIButton! //button to set to night mode
    @IBOutlet weak var previousDiscussionsScrollView: UIScrollView! // A scroll view showing all previous discussions (is a scroll view due to the increasin amount of discussion
    @IBOutlet weak var createANewDiscussionButton: UIButton! //button that creates a discussion
    @IBAction func createANewDiscussionButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Discussion", bundle: nil) // setting the storyboard to the discussion storyboard
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "DiscussionMaterials") as! UIViewController // Use your Storyboard ID
        
        secondViewController.modalPresentationStyle = .fullScreen //ensures that the guest screen does not appear as a pop up but as a new full screen
            
            // Present the new view controller
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

