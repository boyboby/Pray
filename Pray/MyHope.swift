//
//  MyHope.swift
//  Pray
//
//  Created by 潘磊 on 2019/1/2.
//  Copyright © 2019 PL. All rights reserved.
//

import Foundation

class MyHope:NSObject{
    var name: String
    var wishes: Int
    var days:Int
    var firstDay:Date
    var lastDay:Date
    
    init(name:String,wishes:Int,days:Int,from:Date,last:Date){
        self.name = name
        self.wishes = wishes
        self.days = days
        self.firstDay = from
        self.lastDay = last
        super.init()
    }
    
}
