//
//  DetailImageViewController.swift
//  SwiftExercises
//
//  Created by Sezer on 25.07.2022.
//

import UIKit

class DetailImageViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgCity: UIImageView!
    
    var selectedLandmarkName=""
    var selectedLandmarkImage=UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text=selectedLandmarkName
        imgCity.image=selectedLandmarkImage
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
