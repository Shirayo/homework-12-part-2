//
//  ImageNotFoundViewController.swift
//  homework 12 part 2
//
//  Created by Shirayo on 20.02.2020.
//  Copyright © 2020 Shirayo. All rights reserved.
//

import UIKit

class ImageNotFoundViewController: UIViewController {

    @IBOutlet weak var errorTextLabel: UILabel!
    var nameOfTheImage: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        errorTextLabel.text! += nameOfTheImage
    }
}
