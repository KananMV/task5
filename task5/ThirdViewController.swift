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
    
}
