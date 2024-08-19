import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    
    }
    
    @IBAction func signinTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "SecondViewController")
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
    }
    
    private func setup(){
        facebookButton.layer.borderWidth = 1
        facebookButton.layer.borderColor = UIColor.lightGray.cgColor
        facebookButton.layer.cornerRadius = 8
        
        googleButton.layer.borderWidth = 1
        googleButton.layer.borderColor = UIColor.lightGray.cgColor
        googleButton.layer.cornerRadius = 8
        
        appleButton.layer.borderWidth = 1
        appleButton.layer.borderColor = UIColor.lightGray.cgColor
        appleButton.layer.cornerRadius = 8
        
        signInButton.layer.borderWidth = 1
        signInButton.layer.borderColor = UIColor.lightGray.cgColor
        signInButton.layer.cornerRadius = 8
        
        signInButton.layer.cornerRadius = 16
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
        print("tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "ThirdViewController")
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
        
    }
    
}



