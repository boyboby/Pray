//
//  HopeData.swift
//  Pray
//
//  Created by 潘磊 on 2018/12/20.
//  Copyright © 2018 PL. All rights reserved.
//

import Foundation

let hopesData = [
    Hope(label:HopeKeys.zhaogongming.rawValue,name:"求财运",desc:"向财神祈福"),
    Hope(label:HopeKeys.yuelao.rawValue,name: "求姻缘", desc: "向月老祈福"),
    Hope(label:HopeKeys.guanyin.rawValue,name: "求子", desc: "向观音祈福"),
    Hope(label:HopeKeys.puxian.rawValue,name: "求仕途", desc: "向普贤菩萨祈福"),
    Hope(label:HopeKeys.yaoshifo.rawValue,name: "求健康", desc: "向药师佛祈福"),
]

enum HopeKeys: String{
    case zhaogongming
    case yuelao
    case guanyin
    case puxian
    case yaoshifo
}
