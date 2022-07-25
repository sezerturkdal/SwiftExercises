//
//  TableViewController.swift
//  SwiftExercises
//
//  Created by Sezer on 17.07.2022.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblView: UITableView!
    var landmarkNames=[String]()
    var landmarkImages=[UIImage]()
    
    var chosenLandmarkName=""
    var chosenLandmarkImage=UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title="Cities"

        tblView.delegate=self
        tblView.dataSource=self
        
        landmarkNames.append("Amsterdam")
        landmarkNames.append("Paris")
        landmarkNames.append("Rome")
        
        landmarkImages.append(UIImage(named: "amsterdam.jpeg")!)
        landmarkImages.append(UIImage(named: "paris.jpeg")!)
        landmarkImages.append(UIImage(named: "rome.jpeg")!)
    }
    
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chosenLandmarkName=landmarkNames[indexPath.row]
         chosenLandmarkImage=landmarkImages[indexPath.row]
        
        
        performSegue(withIdentifier: "toDetailImageViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toDetailImageViewController"{
            let destinationVC=segue.destination as! DetailImageViewController
            destinationVC.selectedLandmarkName=chosenLandmarkName
            destinationVC.selectedLandmarkImage=chosenLandmarkImage
        }
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
