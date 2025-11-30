//
//  AddMaterialViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers
// all of the following contains the content of the pop up that will appear when the add material button is selected on the discussion mateials page
final class AddMaterialViewController: UIViewController {
    var modelContext: ModelContext? //Allows for accessing of @Models (Databasing from SwiftData)
    @IBOutlet weak var totalVerticalStackView: UIStackView! // stack view holding all content for the pop up when the add material
    @IBOutlet weak var materialNameHorizontalStackView: UIStackView! // stack view holding the label that askes for the name of the material and the associated text field
    @IBOutlet weak var materialNameLabel: UILabel! // label asking for the name of the material
    @IBOutlet weak var materialNameTextField: UITextField! // text field where the material name will be inputed
    @IBOutlet weak var materialDescriptionHorizontalStackView: UIStackView! // stack view holding the label that askes for the description of the material and the associated text field
    @IBOutlet weak var materialDescriptionLabel: UILabel! // label asking for the description of the material
    @IBOutlet weak var materialDescriptionTextView: UITextView! // text field where the material description will be inputed
    @IBOutlet weak var submitMaterialButton: UIButton! // button where these details are inputted
    @IBAction func submitMaterialButtonTapped(_ sender: Any) {
        // open the filemanager needs to be included before this
        guard let modelContext = modelContext else { return }
        let docPicker = UIDocumentPickerViewController()
               // let newMaterial 
         // modelContext.insert(newMaterial)
               do {
                   try modelContext.save()
                    // Refresh data and UI
               } catch {
                   print("Failed to save new ToDoItem: \(error)")
               }
        let storyboard = UIStoryboard(name: "Discussion", bundle: nil) // setting the storyboard to the discussion storyboard
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "DiscussionMaterials") as! UIViewController // to return to the pop up page
        
        secondViewController.modalPresentationStyle = .fullScreen //ensures that the guest screen does not appear as a pop up but as a new full screen
            
            // Present the new view controller
        self.present(secondViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
