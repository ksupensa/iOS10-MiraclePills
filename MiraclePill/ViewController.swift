//
//  ViewController.swift
//  MiraclePill
//
//  Created by Spencer Forrest on 01/12/2016.
//  Copyright © 2016 Spencer Forrest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var priceLb: UILabel!
    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var nameLb: UILabel!
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var addressLb: UILabel!
    @IBOutlet weak var addressTxt: UITextField!
    @IBOutlet weak var cityLb: UILabel!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var countryLb: UILabel!
    @IBOutlet weak var countryBtn: UIButton!
    @IBOutlet weak var countryPicker: UIPickerView!
    @IBOutlet weak var pbLb: UILabel!
    @IBOutlet weak var pbTxt: UITextField!
    @IBOutlet weak var pcLb: UILabel!
    @IBOutlet weak var pcTxt: UITextField!
    @IBOutlet weak var buyBtn: UIButton!
    
    @IBOutlet weak var successImg: UIImageView!
    
    let country = ["France", "Great Britain", "Germany", "Switzerland", "Luxembourg", "Spain", "Italy", "Belgium"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.purple
        countryPicker.dataSource = self
        countryPicker.delegate = self
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func countryBtnPressed(_ sender: Any) {
        countryPicker.isHidden = !countryPicker.isHidden
        pbLb.isHidden = !pbLb.isHidden
        pbTxt.isHidden = !pbTxt.isHidden
        pcLb.isHidden = !pcLb.isHidden
        pcTxt.isHidden = !pcTxt.isHidden
        buyBtn.isHidden = !buyBtn.isHidden
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
        countryPicker.isHidden = !countryPicker.isHidden
        pbLb.isHidden = !pbLb.isHidden
        pbTxt.isHidden = !pbTxt.isHidden
        pcLb.isHidden = !pcLb.isHidden
        pcTxt.isHidden = !pcTxt.isHidden
        buyBtn.isHidden = !buyBtn.isHidden
    }

    @IBAction func buyBtnPressed(_ sender: Any) {
        logoImg.isHidden = !logoImg.isHidden
        titleLb.isHidden = !titleLb.isHidden
        priceLb.isHidden = !priceLb.isHidden
        seperatorView.isHidden = !seperatorView.isHidden
        nameLb.isHidden = !nameLb.isHidden
        nameTxt.isHidden = !nameTxt.isHidden
        addressLb.isHidden = !addressLb.isHidden
        addressTxt.isHidden = !addressTxt.isHidden
        cityLb.isHidden = !cityLb.isHidden
        cityTxt.isHidden = !cityTxt.isHidden
        countryLb.isHidden = !countryLb.isHidden
        countryBtn.isHidden = !countryBtn.isHidden
        pbLb.isHidden = !pbLb.isHidden
        pbTxt.isHidden = !pbTxt.isHidden
        pcLb.isHidden = !pcLb.isHidden
        pcTxt.isHidden = !pcTxt.isHidden
        buyBtn.isHidden = !buyBtn.isHidden
        
        successImg.isHidden = !successImg.isHidden
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    


}

