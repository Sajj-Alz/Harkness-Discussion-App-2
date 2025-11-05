//
//  SignUpViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI

final class SignUpViewController: UIViewController {
    @IBOutlet weak var totalVerticalStackView: UIStackView! // stack view holding all content of the log in page
    @IBOutlet weak var emailAddressVerticalStackView: UIStackView! // stack view holding label asking for email address and associated text field
    @IBOutlet weak var emailAddressLabel: UILabel! // Label asking for email address
    @IBOutlet weak var emailAddressTextField: UITextField! // Text Field holding email address
    @IBOutlet weak var passwordVerticalStackView: UIStackView! // stack view holding label asking for password and associated text field
    @IBOutlet weak var passwordLabel: UILabel! // Label asking for password
    @IBOutlet weak var passwordTextField: UITextField! // Text Field holding password
    @IBOutlet weak var confirmPasswordVerticalStackView: UIStackView! // stack view holding label asking for confirmation of the password and associated text field
    @IBOutlet weak var confirmPasswordLabel: UILabel! // Label asking for password
    @IBOutlet weak var confirmPasswordTextField: UITextField! // Text Field holding password
    @IBOutlet weak var createAccountButtonVerticalStackView: UIStackView! // stack view holding button to create an account
    @IBOutlet weak var createAccountButton: UIButton! // Button to create account
    @IBAction func createAccountButtonTapped(_ sender: Any) {
        var textFieldInputEmail = emailAddressTextField.text
        var textFieldInputPassword = passwordTextField.text
        var textFieldInputConfirmPassword = confirmPasswordTextField.text
        if (!textFieldInputEmail!.isEmpty && !textFieldInputPassword!.isEmpty && !textFieldInputConfirmPassword!.isEmpty) && (textFieldInputPassword == textFieldInputConfirmPassword){
            //load first time user page and increase number of users (in database) and add textFieldInputEmail and textFieldInputConfirmPassword to database
        }
    }
}

