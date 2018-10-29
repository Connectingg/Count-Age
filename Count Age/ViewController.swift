//
//  ViewController.swift
//  Count Age
//
//  Created by Zahid on 24/10/18.
//  Copyright © 2018 Haqqani Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtYearOfBirth: UITextField!
    @IBOutlet weak var laShowAge: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func buFindAge(_ sender: Any) {
        
        GetAge()
    }
    
    func GetAge(){
        //fire click of button
    let yearOfBirth = Int(txtYearOfBirth.text!)
        //get current year
        let date = Date()
        let calender = Calendar.current
        let year = calender.component(.year, from: date)
        
        let personAge = year - yearOfBirth!
        laShowAge.text = "Umur Kamu Sekarang \(personAge)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        GetAge()
        self.view.endEditing(true)
        return true
    }
    


}

