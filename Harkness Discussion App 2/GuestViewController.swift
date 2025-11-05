//
//  GuestViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI
// this view will also be used by first time user since they do not have a list of discussions
final class GuestViewController: UIViewController {
    @IBOutlet weak var verticalStackView: UIStackView! //contains the label harkness as well as the color wheel and the dark mode setting(button)
    @IBOutlet weak var harknessLabel: UILabel! //contains the label harkness
    @IBOutlet weak var horizontalStackView: UIStackView! //contains horizontal stack view to distribute the color picker (for the background) and the night mode setting
    @IBOutlet weak var colorWheelView: UIColorWell! //the color wheel for the user to decide their background color
    @IBOutlet weak var nightModeButton: UIButton! //button to set to night mode
    @IBOutlet weak var createANewDiscussionImageView: UIImageView! // Create a new discussion image instead of a scroll view featuring all discussions (since first time and guest user have no discussions) (look to critera B for the image
    @IBOutlet weak var createANewDiscussionButton: UIButton! //button that creates the user's first (and maybe only discussion (if user is guest))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
