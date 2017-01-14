//
//  MemeTextField.swift
//  A specialized version of UITextField
//
//  Created by Damo de Lemos, Sergio on 1/13/17.
//  Copyright © 2017 Damo de Lemos, Sergio. All rights reserved.
//

import UIKit

class MemeTextField: UITextField {

    let memeTextAttributes:[String:Any] = [
        NSStrokeColorAttributeName: UIColor.black,
        NSForegroundColorAttributeName: UIColor.white,
        NSFontAttributeName: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
        NSStrokeWidthAttributeName: -5,
    ]
    
    var isPristine = true
    var originalText : String!
    
    override func awakeFromNib() {
        defaultTextAttributes = memeTextAttributes
        textAlignment = NSTextAlignment.center
        originalText = text
    }
    
    func restorePristine() {
        isPristine = true
        text = originalText
    }

}
