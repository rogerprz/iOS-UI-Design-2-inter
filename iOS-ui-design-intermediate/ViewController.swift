//
//  ViewController.swift
//  iOS-ui-design-intermediate
//
//  Created by Roger Perez on 1/25/19.
//  Copyright © 2019 Roger Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    let data:[[String]] = [
        ["Item1", "item2", "item3", "item4"],
        ["ItemA", "itemB", "itemC"]
    ]

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { //components for columns
        return data.count //will return one column
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count //says how many rows it has
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = data[component][row]
    }


}

