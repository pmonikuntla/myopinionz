//
//  StepsToLoginViewController.swift
//  myopinionz
//
//  Created by Prudhvi Monikuntla on 12/2/18.
//  Copyright © 2018 Prudhvi Monikuntla. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}


class StepsToLoginViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var mIDTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mIDTextField.addTarget(self, action: #selector(self.onmIDTextFieldTouch(textfield:)), for: .touchDown)
        
    }
    
    @objc func onmIDTextFieldTouch(textfield : UITextField){
        registerBtn.isHidden = true
        orLabel.isHidden = true
        searchBar.isHidden = true
        self.mIDTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive = true
        self.mIDTextField.frame = CGRect(x: 100, y:100, width: mIDTextField.frame.width, height: mIDTextField.frame.height)
        self.view.endEditing(true)
    }
}

