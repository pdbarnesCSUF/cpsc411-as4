//
//  FavViewController.swift
//  cpsc411-as4
//
//  Created by CampusUser on 5/13/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

class FavViewController: UIViewController {

    @IBOutlet weak var usdSwitch: UISwitch!
    @IBOutlet weak var eurSwitch: UISwitch!
    @IBOutlet weak var gbpSwitch: UISwitch!
    @IBOutlet weak var inrSwitch: UISwitch!
    @IBOutlet weak var audSwitch: UISwitch!
    @IBOutlet weak var cadSwitch: UISwitch!
    @IBOutlet weak var sgdSwitch: UISwitch!
    @IBOutlet weak var jpySwitch: UISwitch!
    @IBOutlet weak var twdSwitch: UISwitch!
    @IBOutlet weak var cnySwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        usdSwitch.isOn = CalcData.shared.booleanArr[0]
        eurSwitch.isOn = CalcData.shared.booleanArr[1]
        gbpSwitch.isOn = CalcData.shared.booleanArr[2]
        inrSwitch.isOn = CalcData.shared.booleanArr[3]
        audSwitch.isOn = CalcData.shared.booleanArr[4]
        cadSwitch.isOn = CalcData.shared.booleanArr[5]
        sgdSwitch.isOn = CalcData.shared.booleanArr[6]
        jpySwitch.isOn = CalcData.shared.booleanArr[7]
        twdSwitch.isOn = CalcData.shared.booleanArr[8]
        cnySwitch.isOn = CalcData.shared.booleanArr[9]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func updateCalc()
    {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
