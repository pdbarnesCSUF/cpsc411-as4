//
//  ViewController.swift
//  cpsc411-as4
//
//  Created by CampusUser on 4/10/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var fromPicker: UIPickerView!
    @IBOutlet weak var toPicker: UIPickerView!
    @IBOutlet weak var fromText: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var toLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //toLabel.text = String(CalcData.shared.countnum) //nope
        //CalcData.shared.countnum += 1 //nope
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        toLabel.text = String(CalcData.shared.countnum) //yes
        //CalcData.shared.countnum += 1 //yes
        //recreate pickers
        
        //clear numbers
        fromText.text = ""
        //toLabel.text = ""
    }

}

