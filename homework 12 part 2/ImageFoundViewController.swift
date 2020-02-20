//
//  ImageFoundViewController.swift
//  homework 12 part 2
//
//  Created by Shirayo on 20.02.2020.
//  Copyright © 2020 Shirayo. All rights reserved.
//

import UIKit

class ImageFoundViewController: UIViewController {

    @IBOutlet weak var nameOfTheImage: UILabel!
    @IBOutlet weak var image: UIImageView!
    var imageNameToTransfer: String = ""
    var imageToTransfer: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfTheImage.text! = imageNameToTransfer
        image.image = imageToTransfer
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
