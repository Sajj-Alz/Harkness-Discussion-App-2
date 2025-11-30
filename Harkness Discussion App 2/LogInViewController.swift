//
//  LogInViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI
import SwiftData
final class LogInViewController: UIViewController {
    var modelContext: ModelContext? //Allows for accessing of @Models (Databasing from SwiftData)
    @IBOutlet weak var totalVerticalStackView: UIStackView! // stack view holding all content of the log in page
    @IBOutlet weak var emailAddressVerticalStackView: UIStackView! // stack view holding label asking for email address and associated text field
    @IBOutlet weak var emailAddressLabel: UILabel! // Label asking for email address
    @IBOutlet weak var emailAddressTextField: UITextField! // Text Field holding email address
    @IBOutlet weak var passwordVerticalStackView: UIStackView! // stack view holding label asking for password and associated text field
    @IBOutlet weak var passwordLabel: UILabel! // Label asking for password
    @IBOutlet weak var passwordTextField: UITextField! // Text Field holding password
    @IBOutlet weak var logInButtonVerticalStackView: UIStackView! // stack view holding button to submit the email and password
    @IBOutlet weak var logInButton: UIButton! // Button to submit the email and password
    @IBAction func logInButtonTapped(_ sender: Any) {
        var textFieldInputEmail = emailAddressTextField.text
        var textFieldInputPassword = passwordTextField.text
        
        if !textFieldInputEmail!.isEmpty && !textFieldInputPassword!.isEmpty {
            //loop through database of users (for all users) and then if you find a user with the exact email and password log them in then load them into that account
            // ex: for User{ if self.emailAddress!==textFieldInputEmail && self.password!==textFieldInputPassword{ then load the main page of that user (using info from database}
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // setting the storyboard to the main storyboard
            let secondViewController = storyboard.instantiateViewController(withIdentifier: "HarknessHomePermanentUser") as! UIViewController // Use your Storyboard ID
            
            secondViewController.modalPresentationStyle = .fullScreen //ensures that the guest screen does not appear as a pop up but as a new full screen
                
                // Present the new view controller
            self.present(secondViewController, animated: true, completion: nil)
            
        }
    }
}
