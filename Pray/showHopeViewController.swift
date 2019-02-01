//
//  showHopeViewController.swift
//  Pray
//
//  Created by 潘磊 on 2018/12/29.
//  Copyright © 2018 PL. All rights reserved.
//

import UIKit

class showHopeViewController: UIViewController {

    @IBOutlet weak var prayDisplay: UILabel!
    @IBAction func clickPrayButton(_ sender: UIButton) {
        let buttonName = sender.currentTitle!
        print("click \(String(describing: buttonName)) button")
        let textprayDisplay = prayDisplay!.text!
        var intPrayDisplay = Int(textprayDisplay)!
        intPrayDisplay += 1
        print("intPrayDisplay:\(intPrayDisplay)")
        prayDisplay!.text = String(intPrayDisplay)
        print("prayDisplay's text:\(String(describing: prayDisplay!.text ))")
        
        
    }

}
