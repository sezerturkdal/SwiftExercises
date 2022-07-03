//
//  ViewController.swift
//  SwiftExercises
//
//  Created by Sezer on 14.06.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text?.removeAll()

    }

   
    @IBAction func btnSaveClicked(_ sender: Any) {
        lblResult.text=txtUserName.text
    }
    
    
}

