//
//  ViewController.swift
//  TagDesigner
//
//  Created by William Cuc on 1/06/17.
//  Copyright © 2017 William Cuc. All rights reserved.
//

import UIKit

class ViewController: BaseViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    @IBOutlet weak var add: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.add.layer.cornerRadius = self.add.frame.size.width/2
        //self.add.clipsToBounds = true
        self.addSlideMenuButton()
        self.title = "My Creations"
    }

    @IBAction func addPost(_ sender: UIButton) {
        let actionSheetController = UIAlertController(title: "Select a Option", message: "Where do you want to get the photo?", preferredStyle: .actionSheet)
        let optionCamera = UIAlertAction(title: "Camera", style: .default) { (UIAlertAction) in
            self.openCamera()
        }
        
        let optionGallery = UIAlertAction(title: "Gallery", style: .default) { (UIAlertAction) in
            self.openGallery()
        }
        
        let optionCancel = UIAlertAction(title: "Cancel", style: .default) { (UIAlertAction) in
            
        }
        
        actionSheetController.addAction(optionCamera)
        actionSheetController.addAction(optionGallery)
        actionSheetController.addAction(optionCancel)
        
        
        if let popoverController = actionSheetController.popoverPresentationController {
            popoverController.sourceView = sender
            popoverController.sourceRect = sender.bounds
        }
        
        self.present(actionSheetController, animated: true, completion: nil)
    }
    
    func openCamera() -> Void {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func openGallery() -> Void {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



