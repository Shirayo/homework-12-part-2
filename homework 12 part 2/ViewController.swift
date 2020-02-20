//
//  ViewController.swift
//  homework 12 part 2
//
//  Created by Shirayo on 20.02.2020.
//  Copyright © 2020 Shirayo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageToFindText: UITextField!
    var segueImageFound = "ImageFound"
    var segueImageNotFound = "ImageNotFound"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonDidClick(_ button: UIButton) {
        if let _ = UIImage(named: imageToFindText.text!) {
            self.performSegue(withIdentifier: segueImageFound , sender: button)
        } else {
            self.performSegue(withIdentifier: segueImageNotFound , sender: button)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueImageFound {
            let imageViewController = segue.destination as! ImageFoundViewController
            imageViewController.imageToTransfer = UIImage(named: imageToFindText.text!)
            imageViewController.imageNameToTransfer = imageToFindText.text!
        }
        if segue.identifier == segueImageNotFound {
            let imageViewController = segue.destination as! ImageNotFoundViewController
            imageViewController.nameOfTheImage = imageToFindText.text!
        }
    }
}
extension ViewController:UITextFieldDelegate { // почему-то не работает
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
            case imageToFindText:
                imageToFindText.resignFirstResponder()
            default:
                break
        }
        return false
    }
}

