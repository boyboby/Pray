//
//  MyPray.swift
//  Pray
//
//  Created by 潘磊 on 2019/1/2.
//  Copyright © 2019 PL. All rights reserved.
//

import Foundation

class MyPray:NSObject{
    var aim: Hope
    var firstDay:Date?
    var lastDay:Date?
    var count:Int = 0
    
    init(hope:Hope){
        self.aim = hope
        self.count = self.count + 1
        
        if self.firstDay == nil{
            self.firstDay = Date()
        }
        self.lastDay = Date()
        
        print("init: first:\(self.firstDay!);last:\(self.lastDay!)")
        super.init()
    }
    
}
