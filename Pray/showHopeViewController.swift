//
//  showHopeViewController.swift
//  Pray
//
//  Created by 潘磊 on 2018/12/29.
//  Copyright © 2018 PL. All rights reserved.
//

import UIKit

class showHopeViewController: UIViewController {
    var prayType :String{
        get{
            return userDefaults.object(forKey: "PrayType") as! String
        }
    }
    
    @IBOutlet weak var prayDisplay: UILabel!
    
    @IBOutlet weak var prayImage: UIImageView!
    
    var prayNum : Int{
        get{
            return Int(prayDisplay.text!)!
        }
        set{
            prayDisplay.text = String(newValue)
        }
    }
    
    
    override func viewDidLoad() {
        print("in showHopeViewController begin pray view load")
        super.viewDidLoad()
        // 从 userDefaults 里查询数据
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("in showHopeViewController begin pray view appear")
        prayImage.image = UIImage(named: prayType)
    }
    
    @IBAction func clickPrayButton(_ sender: UIButton) {
        print("in showHopeViewController begin pray view load")
        let buttonName = sender.currentTitle!
        print("click \(String(describing: buttonName)) button")
        
        prayNum += 1
        
        print("prayNum:\(prayNum)")
        print("prayDisplay's text:\(String(describing: prayDisplay!.text ))")
        print("selectPray is :\(self.prayType)")
        
        let userDefaults: UserDefaults = UserDefaults.standard
        
        userDefaults.set(prayNum, forKey: String(prayType)+"Num")
        
        // 同步数据，把数据持久化到 standardUserDefaults 数据库
        userDefaults.synchronize()
        
    }
    
}
