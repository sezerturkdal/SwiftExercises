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
    
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var lblCount: UILabel!
    var userNameFromMainScreen = ""
    var timer=Timer()
    var counter=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad function called")
        
        lblResult.text?.removeAll()
        btnRemove.isHidden=true
        
        lblHeader.text = userNameFromMainScreen
    }
    
    //Life cycle functions
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
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
        if txtUserName.text=="" {
            let alert=UIAlertController(title: "Error", message: "Username field is empty", preferredStyle: UIAlertController.Style.alert)
            let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
                print("Clicked")
            }
            
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        UserDefaults.standard.set(txtUserName.text, forKey: "userName")
        txtUserName.text?.removeAll()
        btnRemove.isHidden=true
        lblResult.text="Result: Saved"
    }
    @IBAction func textEditing(_ sender: Any) {
        
        counter=10
        
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(txtEditing), userInfo: nil, repeats: true)
            
            
        }
    
    @objc func txtEditing(){
        
        lblCount.text="Time: \(counter)"
        counter-=1
        
        if counter<0{
            timer.invalidate()
            txtUserName.text?.removeAll()
        }
    }
    
}

