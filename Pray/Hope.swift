//
//  Hope.swift
//  Pray
//
//  Created by 潘磊 on 2018/12/19.
//  Copyright © 2018 PL. All rights reserved.
//

import UIKit

class Hope:NSObject{
    var label: String
    var name: String
    var desc: String
    var firstDay:Date?
    var lastDay:Date?
    var count:Int = 0
    
    init(label:String,name:String,desc:String){
        self.label = label
        self.name = name
        self.desc = desc
        
        
        super.init()
    }
    func onePray(){
        self.count = self.count + 1
        
        if self.firstDay == nil{
            self.firstDay = Date()
        }
        self.lastDay = Date()
    }
}
