//
//  SecondViewController.swift
//  task5
//
//  Created by Kenan Memmedov on 19.08.24.
//

import UIKit
 

class SecondViewController: UIViewController{
    @IBOutlet weak var mailImage: UIImageView!
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var mailTextField: UITextField!{
        didSet{
            mailTextField.delegate = self
        }
    }
    @IBOutlet weak var passwordImage: UIImageView!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!{
        didSet{
            passwordTextField.delegate = self
        }
    }
    @IBOutlet weak var signinButton: UIButton!
    
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == mailTextField{
            mailImage.isHidden = true
            mailLabel.isHidden = true
        }
        else if textField == passwordTextField{
            passwordImage.isHidden = true
            passwordLabel.isHidden = true
        }
            
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == mailTextField && textField.text?.isEmpty == true{
            
            mailLabel.isHidden = false
            mailImage.isHidden = false
        }
        else if textField == passwordTextField && textField.text?.isEmpty == true{
            passwordImage.isHidden = false
            passwordLabel.isHidden = false
        }
    }
    @IBAction func signupButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "ThirdViewController")
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
    }
    
    func setup(){
        signinButton.layer.cornerRadius = 16
        facebookButton.layer.borderWidth = 1
        facebookButton.layer.cornerRadius = 8
        facebookButton.layer.borderColor = UIColor.lightGray.cgColor
        googleButton.layer.borderWidth = 1
        googleButton.layer.cornerRadius = 8
        googleButton.layer.borderColor = UIColor.lightGray.cgColor
        appleButton.layer.borderWidth = 1
        appleButton.layer.borderColor = UIColor.lightGray.cgColor
        appleButton.layer.cornerRadius = 8
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        updatecontuniebutton()
        
    }
    func updatecontuniebutton(){
        if mailTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false{
            signinButton.isEnabled = true
            signinButton.backgroundColor = .red
        }
        else{
            signinButton.isEnabled = false
            signinButton.backgroundColor = .lightGray
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
extension SecondViewController: UITextFieldDelegate{
    
}
