//
//  LinkMapViewController.swift
//  Harkness Discussion App
//
//  Created by Sajjad Alzaher on 1/11/25.
//

import SwiftUI

final class LinkMapViewController: UIViewController {
    //code from xxx (reference to be added)
    @State private var text = ""
    @State private var error: Error?
    @State private var isImporting = false
    //
    @IBOutlet weak var linkMapImageView: UIImageView! // the image that contains an empty link map (see apendix B for reference) that can be drawn on (through the FastDraw and pencil kit library
    @IBOutlet weak var discussionTabBar: UITabBar! // the controller for the tabs in the tab bar present on all discussion views
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
}
