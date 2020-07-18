//
//  Donate2VC.swift
//  VOLK
//
//  Created by Badria Alqanai on 7/18/20.
//  Copyright © 2020 KUWAIT. All rights reserved.
//

import UIKit

class Donate2VC: UIViewController {

    @IBAction func shareBtn(_ sender: Any) {
        if let url = URL(string: "https://www.instagram.com/") {
        UIApplication.shared.open(url)
        }
    }
    override func viewDidLoad() {
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
