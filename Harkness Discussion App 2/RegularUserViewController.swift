//
//  RegularUserViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI

final class RegularUserViewController: UIViewController {
    @IBOutlet weak var verticalStackView: UIStackView! //contains the label harkness as well as the color wheel and the dark mode setting(button)
    @IBOutlet weak var harknessLabel: UILabel! //contains the label harkness
    @IBOutlet weak var horizontalStackView: UIStackView! //contains horizontal stack view to distribute the search text field (based on the title of the discussion), sort function (thinking to do it based on date (might remove)),color picker (for the background) and the night mode setting
    @IBOutlet weak var searchDiscussionsTextField: UITextField! // text field to search for discussions by name
    @IBOutlet weak var sortButton: UIButton! //button to sort by date (most recent)
    @IBOutlet weak var colorWheelView: UIColorWell! //the color wheel for the user to decide their background color
    @IBOutlet weak var nightModeButton: UIButton! //button to set to night mode
    @IBOutlet weak var previousDiscussionsScrollView: UIScrollView! // A scroll view showing all previous discussions (is a scroll view due to the increasin amount of discussion
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

