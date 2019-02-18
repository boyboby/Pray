//
//  showHopeViewController.swift
//  Pray
//
//  Created by 潘磊 on 2018/12/29.
//  Copyright © 2018 PL. All rights reserved.
//

import UIKit

class showHopeViewController: UIViewController {
    var prayType = "zhaogongming"
    
    @IBOutlet weak var prayDisplay: UILabel!
    
    @IBOutlet weak var prayImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        prayImage.image = UIImage(named: prayType)
    }
    
    var prayNum : Int{
        get{
            return Int(prayDisplay.text!)!
        }
        set{
            prayDisplay.text = String(newValue)
        }
    }

    
    
    
    @IBAction func clickPrayButton(_ sender: UIButton) {
        let buttonName = sender.currentTitle!
        print("click \(String(describing: buttonName)) button")
        
        prayNum += 1
        
        print("prayNum:\(prayNum)")
        print("prayDisplay's text:\(String(describing: prayDisplay!.text ))")
        print("selectPray is :\(self.prayType)")
        
        
    }
    
}
