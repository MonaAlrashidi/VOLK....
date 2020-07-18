//
//  DoctorsMasterVC.swift
//  VOLK
//
//  Created by Badria Alqanai on 7/15/20.
//  Copyright © 2020 KUWAIT. All rights reserved.
//

import UIKit
var selectedDoctor: Doctor = Doctor(doctorName: "", doctorText: "")
var yesQ = 0
var noQ = 0

var indexx = 0
class DoctorsMasterVC: UIViewController {
    
    @IBAction func doctorBtn(_ sender: UIButton) {
        selectedDoctor = Doctors[sender.tag]
        performSegue(withIdentifier: "doctorIdentifier", sender: nil)
    }
    
   
    @IBOutlet weak var y1: UIButton!
    @IBOutlet weak var y2: UIButton!
    @IBOutlet weak var y3: UIButton!
    @IBOutlet weak var y4: UIButton!
    @IBOutlet weak var y5: UIButton!
    
    
    
    @IBOutlet weak var n1: UIButton!
    @IBOutlet weak var n2: UIButton!
    @IBOutlet weak var n3: UIButton!
    @IBOutlet weak var n4: UIButton!
    @IBOutlet weak var n5: UIButton!
    
    
    
    @IBAction func y1Btn(_ sender:UIButton) {
        switch sender.tag {
        case 1:
           
            y1.isEnabled = false
            n1.isEnabled = false
        case 2:
            y2.isEnabled = false
            n2.isEnabled = false
        case 3:
            y3.isEnabled = false
            n3.isEnabled = false
        case 4:
            y4.isEnabled = false
            n4.isEnabled = false
        case 5:
            y5.isEnabled = false
            n5.isEnabled = false
        default:
            print("end")
        }
          yesQ += 1
      
      
          print("Yes \(yesQ) Sender tag is \(sender.tag)")
       
    }
    
    @IBAction func n1Btn(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            y1.isEnabled = false
            n1.isEnabled = false
        case 2:
            y2.isEnabled = false
            n2.isEnabled = false
        case 3:
            y3.isEnabled = false
            n3.isEnabled = false
        case 4:
            y4.isEnabled = false
            n4.isEnabled = false
        case 5:
            y5.isEnabled = false
            n5.isEnabled = false
        default:
            print("end")
        }
        noQ += 1
        print("No \(noQ) Sender tag is \(sender.tag)")
      
        
               
    }
    
    @IBAction func submitAction(_ sender: Any) {
        checking()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        yesQ = 0
        noQ = 0
        start()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yesQ = 0
        noQ = 0
start()
        // Do any additional setup after loading the view.
    }
    func checking() {
        if yesQ >= 3 {
            alertShow(tittle: "Unfortunately you do have the symptoms", message: "s")
             indexx = 0        }
        if noQ >= 3 {
               alertShow(tittle: "sss", message: "s")
             indexx = 1          }
    }
    func alertShow(tittle : String, message : String) {
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK ", style: .cancel, handler: { (alert : UIAlertAction) in
            self.performSegue(withIdentifier: "feelSick", sender: nil)
           
        }))
        present(alert, animated: true, completion: nil)

    }
    func start() {
        y1.isEnabled = true
        n1.isEnabled = true
        
        y2.isEnabled = true
        n2.isEnabled = true
        
        y3.isEnabled = true
        n3.isEnabled = true
        
        y4.isEnabled = true
        n4.isEnabled = true
        
        y5.isEnabled = true
        n5.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doctorIdentifier"{
         let doctorController = segue.destination as! DoctorDetailsVC
        doctorController.doctorData = selectedDoctor
    }
        if segue.identifier == "feelSick"{
            let feelingSickCntrl = segue.destination as! FeelingSickVC
            
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
