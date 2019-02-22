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

//func setData(){
//    print("in setData")
//    
//    // 同步数据，把数据持久化到 standardUserDefaults 数据库
//    userDefaults.synchronize()
//    
//    // 从 userDefaults 里查询数据
//    let str1 = userDefaults.string(forKey: "string1")
//    if str1 == nil{
//        print("string1 is null")
//    }else{
//        print("string1 is :\(String(describing: str1))")
//    }
//    
//    let str = userDefaults.string(forKey: "string")
//    if str == nil{
//        print("string is null")
//    }else{
//        print("string is :\(String(describing: str))")
//    }
//    
//    
//    // 删除数据
//    userDefaults.removeObject(forKey: "string")
//    // 同步数据
//    userDefaults.synchronize()
//}
// 存放数据

func initData(){
    print("in initData")
    let guanyinFlag = userDefaults.string(forKey: HopeKeys.guanyin.rawValue)
    if guanyinFlag == nil{
        print("guanyin is nil")
        
    }
    else{
        print("guanyin is \(String(describing: guanyinFlag))")
    }
    
}

