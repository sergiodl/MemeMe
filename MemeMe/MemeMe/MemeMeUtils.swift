//
//  MemeMeUtils.swift
//  Some utilities methods
//
//  Created by Damo de Lemos, Sergio on 1/13/17.
//  Copyright © 2017 Damo de Lemos, Sergio. All rights reserved.
//

import Foundation
import UIKit

class MemeMeUtils {
    static func isCameraAvailable() -> Bool {
        return UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
    }
    
    static func openCamera(sourceController: UIViewController, delegate: UIImagePickerControllerDelegate & UINavigationControllerDelegate) {
        if(MemeMeUtils.isCameraAvailable()) {
            openImagePicker(sourceController: sourceController, sourceType: UIImagePickerControllerSourceType.camera, delegate: delegate)
        }
    }
    
    static func openImageGallery(sourceController: UIViewController, delegate: UIImagePickerControllerDelegate & UINavigationControllerDelegate) {
        openImagePicker(sourceController: sourceController, sourceType: UIImagePickerControllerSourceType.photoLibrary, delegate: delegate)
    }
    
    static func openImagePicker(sourceController: UIViewController, sourceType: UIImagePickerControllerSourceType, delegate: UIImagePickerControllerDelegate & UINavigationControllerDelegate) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = delegate
        imagePickerController.sourceType = sourceType
        
        sourceController.present(imagePickerController, animated: true, completion: nil)
    }
    
    static func renderScreenToImage(view: UIView) -> UIImage {
        UIGraphicsBeginImageContext(view.frame.size)
        view.drawHierarchy(in: view.frame, afterScreenUpdates: true)
        let generatedImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return generatedImage
    }

}
