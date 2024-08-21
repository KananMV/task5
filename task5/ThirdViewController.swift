//
//  ThirdViewController.swift
//  task5
//
//  Created by Kenan Memmedov on 19.08.24.
//

import UIKit

class ThirdViewController: UIViewController{
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var signinButton: UIButton!
    
    @IBOutlet weak var firstnameTextField: UITextField!{
        didSet{
            firstnameTextField.delegate = self
        }
    }
    @IBOutlet weak var lastnameTextField: UITextField!{
        didSet{
            lastnameTextField.delegate = self
        }
    }
    @IBOutlet weak var usernameTextField: UITextField!{
        didSet{
            usernameTextField.delegate = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    @IBAction func signinTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    func setup(){
        facebookButton.layer.borderWidth = 1
        facebookButton.layer.cornerRadius = 8
        facebookButton.layer.borderColor = UIColor.lightGray.cgColor
        googleButton.layer.borderWidth = 1
        googleButton.layer.cornerRadius = 8
        googleButton.layer.borderColor = UIColor.lightGray.cgColor
        appleButton.layer.borderWidth = 1
        appleButton.layer.borderColor = UIColor.lightGray.cgColor
        appleButton.layer.cornerRadius = 8
        continueButton.layer.cornerRadius = 16
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        updatecontinue()
    }
    func updatecontinue(){
        if firstnameTextField.text?.isEmpty == false && lastnameTextField.text?.isEmpty == false && usernameTextField.text?.isEmpty == false{
            continueButton.isEnabled = true
            continueButton.backgroundColor = .red
        }
        else{
            continueButton.isEnabled = false
            continueButton.backgroundColor = .lightGray
        }
    }
    var isIconChanged = false
        
    @IBAction func remembermeButton(_ sender: UIButton) {
        if isIconChanged{
            sender.setImage(UIImage(systemName: "square"), for: .normal)
            sender.tintColor = .lightGray
        }
        else{
            sender.setImage(UIImage(systemName: "square.fill"), for: .normal)
            sender.tintColor = .black
        }
        isIconChanged.toggle()
    }
    
}
extension ThirdViewController: UITextFieldDelegate{
    
}
