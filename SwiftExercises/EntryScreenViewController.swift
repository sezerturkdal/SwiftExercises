//
//  SecondViewController.swift
//  SwiftExercises
//
//  Created by Sezer on 3.07.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var userName=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSecondClicked(_ sender: Any) {
        userName = "NewUser"
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue .identifier == "toSecondVC"{
            let destinationVC = segue.destination as! ViewController
            destinationVC.userNameFromMainScreen = userName
        }
    }

}
