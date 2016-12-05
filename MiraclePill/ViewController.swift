//
//  ViewController.swift
//  MiraclePill
//
//  Created by Spencer Forrest on 01/12/2016.
//  Copyright © 2016 Spencer Forrest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var countryPicker: UIPickerView!
    @IBOutlet weak var countryBtn: UIButton!
    
    let country = ["France", "Great Britain", "Germany", "Switzerland", "Luxembourg", "Spain", "Italy", "Belgium"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.purple
        countryPicker.dataSource = self
        countryPicker.delegate = self
    }
    
    @IBAction func countryBtnPressed(_ sender: Any) {
        countryPicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countryBtn.setTitle(country[row], for: UIControlState.normal)
        countryPicker.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    


}

