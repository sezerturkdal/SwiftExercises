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
    @IBOutlet weak var btnRemove: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text?.removeAll()
        btnRemove.isHidden=true
    }

   
    @IBAction func btnGetData(_ sender: Any) {
        btnRemove.isHidden=false
        /*
         ------USING CAST-----
         
        let lastSavedText=UserDefaults.standard.object(forKey: "userName")
        
        if let lastSavedText = lastUserName as? String{
            lblResult.text="Last saved text: \(lastSavedText)"
        }
        */
        
        if let lastSavedText = UserDefaults.standard.string(forKey: "userName"){
            lblResult.text="Last saved text: \(lastSavedText)"
        }else{
            lblResult.text="There is no any saved text yet!"
        }
    }
    
    @IBAction func btnRemoveClicked(_ sender: Any) {
        if (UserDefaults.standard.string(forKey: "userName") != nil){
            UserDefaults.standard.removeObject(forKey:"userName")
            lblResult.text="UserName removed"
        }
    }
    @IBAction func btnSaveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(txtUserName.text, forKey: "userName")
        txtUserName.text?.removeAll()
        btnRemove.isHidden=true
        lblResult.text="Result: Saved"
    }
    
    
}

