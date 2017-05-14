//
//  ViewController.swift
//  cpsc411-as4
//
//  Created by CampusUser on 4/10/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    let yql:YQL = YQL()
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
        //self.fromPicker.dataSource = self;
        self.fromPicker.delegate = self;
        //self.toPicker.dataSource = self;
        self.toPicker.delegate = self;
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
        toLabel.text = ""
        toLabel.text = String(CalcData.shared.activeArr.count) //Debug
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CalcData.shared.activeArr.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return CalcData.shared.activeArr[row]
    }
    @IBAction func convertClick(_ sender: Any) {
        var rate:Float
        var str:String = "select * from yahoo.finance.xchange where pair in (\"" + String(fromPicker.selectedRow(inComponent: 0)) + String(toPicker.selectedRow(inComponent: 0)) + "\")"
        //query yql
        yql.query(str) { jsonDict in
            let queryDict = jsonDict["query"] as! [String: Any]
            let resultsDict = jsonDict["results"] as! [String: Any]
            let rateDict = jsonDict["rate"] as! [String: Any]
            let rate2Dict = jsonDict["Rate"] as! [String: Any]
            rate = Float(rate2Dict)
            toLabel.text = Float(fromText.text) * rate
        }
        //
    }
}

