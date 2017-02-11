//
//  ViewController.swift
//  opencv-test
//
//  Created by Janusz on 10/02/2017.
//  Copyright © 2017 Janusz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var uiimage:UIImageView!
  
  var original:UIImage!
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    original = uiimage.image
  }
  
  fileprivate func convertImage() {
    let convertedImage = CVWrapper.convert(uiimage.image, original: original)
    
    uiimage.image = convertedImage
  }
  
  @IBAction
  func convert() {
    convertImage()
  }
}

