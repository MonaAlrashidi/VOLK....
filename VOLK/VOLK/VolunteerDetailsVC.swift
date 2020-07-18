//
//  VolunteerDetailsVC.swift
//  VOLK
//
//  Created by Badria Alqanai on 7/17/20.
//  Copyright © 2020 KUWAIT. All rights reserved.
//

import UIKit


class VolunteerDetailsVC: UIViewController {
    @IBOutlet weak var volunteerImg: UIImageView!
     var volunterData: volunteering=volunteering(vol: "")
    

    
    @IBOutlet weak var fName: UITextField!
    
    @IBOutlet weak var lName: UITextField!
    
    @IBOutlet weak var ageLabel: UITextField!
    
    @IBOutlet weak var occupationLabel: UITextField!
    
    @IBOutlet weak var emailLabel: UITextField!
    
    
    @IBAction func submitBtn(_ sender: Any) {
//        fName.text = regVol.firstName
//        lName.text = regVol.lastName
//        ageLabel.text = regVol.age
//        occupationLabel.text = regVol.occupation
//        emailLabel.text = regVol.email
        let firstName = fName.text!
        let age = ageLabel.text!
        let occupation = occupationLabel.text!
        let email = emailLabel.text!
        let regVol: registerVolunteer = registerVolunteer(firstName: firstName, age: age, occupation: occupation, email: email, review: "")

        registeredVolunteer.append(regVol)
        print (registeredVolunteer)
    }
    
    
    override func viewDidLoad() {
        self.volunteerImg.image = UIImage(named:volunterData.vol)
       

        super.viewDidLoad()

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
