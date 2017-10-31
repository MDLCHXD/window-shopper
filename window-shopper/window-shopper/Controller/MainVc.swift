//
//  ViewController.swift
//  window-shopper
//
//  Created by Andrew Smith on 10/27/17.
//  Copyright © 2017 Andrew Smith. All rights reserved.
//

import UIKit

class MainVc: UIViewController {
    
    @IBOutlet weak var wgaeTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
   
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calsBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calsBtn.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        calsBtn.setTitle("Calculate", for: .normal)
        calsBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calsBtn.addTarget(self, action: #selector(MainVc.calculate), for: .touchUpInside)
        
        wgaeTxt.inputAccessoryView = calsBtn
        priceTxt.inputAccessoryView = calsBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = wgaeTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearCalcPressed(_ sender: Any) {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wgaeTxt.text = ""
        priceTxt.text = ""
    }
    
}

