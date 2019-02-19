//
//  StoreData.swift
//  Pray
//
//  Created by Felix on 2019/2/18.
//  Copyright © 2019 PL. All rights reserved.
//

import Foundation

 //public class NSUserDefaults : NSObject

//创建单例类对象
let userDefaults: UserDefaults = UserDefaults.standard

func setData(){
    userDefaults.set("I Love China", forKey: "string")
    
    // 同步数据，把数据持久化到 standardUserDefaults 数据库
    userDefaults.synchronize()
    
    // 从 userDefaults 里查询数据
    let str = userDefaults.object(forKey: "string") as! String
    
    // 删除数据
    userDefaults.removeObject(forKey: "string")
    
    // 同步数据
    userDefaults.synchronize()
}
// 存放数据

