//
//  ViewController.swift
//  AKFA Timetable
//
//  Created by Saydullo Ismatov on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AkfaLogo: UIImageView!
    @IBOutlet weak var idTextField: UITextField!
    
    
    
    
    func showAlert(){
        let alert = UIAlertController(title: "Wrong ID", message: "The ID that you wrote has not found!", preferredStyle: .alert )
        alert.addAction(UIAlertAction(title: "Try again", style: .destructive, handler: { [self]action in
            self.idTextField.text = ""
            }))
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func enterPressed(_ sender: UIButton) {
        let studentID = StudentsInformation()
        let studentIdNumber = idTextField.text!

        if (idTextField.text == ""){
            idTextField.placeholder = "You haven't entered your ID!"
        } else if (studentID.studentNotFound(idNumber: studentIdNumber)){
            showAlert()
        }
        else {
            self.performSegue(withIdentifier: "show", sender: self)

        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AkfaLogo.layer.cornerRadius = AkfaLogo.frame.height/2;
       
    }


}


