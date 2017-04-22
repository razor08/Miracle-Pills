//
//  ViewController.swift
//  MiraclePills
//
//  Created by Jay Sinha on 22/04/2017.
//  Copyright © 2017 Jay Sinha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var buyNow: UIButton!
    
    @IBOutlet weak var buyNow2: UIButton!
    
    
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var streetAddressText: UITextField!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var fullNameText: UITextField!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var lineLabel: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var miraclePillsLabel: UILabel!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var zipcode: UILabel!
    @IBOutlet weak var zipcodeText: UITextField!
    @IBOutlet weak var countryText: UITextField!
    let states = ["Arkansas", "Alabama", "New York", "California", "Washington", "New Jersey", "Minnesota", "Ohio"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        country.isHidden = true
        countryText.isHidden = true
        zipcode.isHidden = true
        zipcodeText.isHidden = true
        
        buyNow.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    @IBAction func buyNowPressed(_ sender: Any) {
        successImage.isHidden = false
        pillImage.isHidden = true
        miraclePillsLabel.isHidden = true
        lineLabel.isHidden = true
        priceLabel.isHidden = true
        fullName.isHidden = true
        fullNameText.isHidden = true
        streetAddress.isHidden = true
        streetAddressText.isHidden = true
        city.isHidden = true
        cityText.isHidden = true
        state.isHidden = true
        stateButton.isHidden = true
        statePicker.isHidden = true
        country.isHidden = true
        countryText.isHidden = true
        zipcode.isHidden = true
        zipcodeText.isHidden = true
        buyNow2.isHidden = true
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        country.isHidden = false
        countryText.isHidden = false
        zipcode.isHidden = false
        zipcodeText.isHidden = false
    }
}

