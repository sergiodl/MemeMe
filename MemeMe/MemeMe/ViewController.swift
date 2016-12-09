//
//  ViewController.swift
//  MemeMe
//
//  Created by Damo de Lemos, Sergio on 11/20/16.
//  Copyright © 2016 Damo de Lemos, Sergio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var cameraButtonItem: UIBarButtonItem!
    @IBOutlet weak var albumButtonItem: UIBarButtonItem!
    
    @IBOutlet weak var memeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cameraButtonPressed(_ sender: Any) {
    }
    
    @IBAction func shareButtonPressed(_ sender: Any) {
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
    }
    
    @IBAction func albumButtonPressed(_ sender: Any) {
        openImageGallery()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            memeImage.image = selectedImage
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    func openImageGallery() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
}

