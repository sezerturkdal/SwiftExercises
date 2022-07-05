//
//  GestureRecognizerViewController.swift
//  SwiftExercises
//
//  Created by Sezer on 5.07.2022.
//

import UIKit

class GestureRecognizerViewController: UIViewController {

    @IBOutlet weak var lblLock: UILabel!
    @IBOutlet weak var imgLock: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgLock.isUserInteractionEnabled=true
        let gestureRecognizer=UITapGestureRecognizer(target: self, action: #selector(changeImage))
        imgLock.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImage(){
        imgLock.image=UIImage(named:"unlocked")
        lblLock.text="Unlocked"
    }

}
