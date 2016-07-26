//
//  didian.swift
//  TextSugue
//
//  Created by Grandre on 15/12/20.
//  Copyright © 2015年 Grandre. All rights reserved.
//

import Foundation

class DiFang {
    var didian:String = ""
    var cellStateShow:String = ""
    init(didian:String,cellStateShow:String){
        self.didian = didian
        self.cellStateShow = cellStateShow
    }
    convenience init(didian: String){
        self.init(didian:didian,cellStateShow: "🈚️")
    }
}



class LvYou:DiFang{
    var time:String
    init(time:String,didian:String,cellS:String){
        self.time = time
        super.init(didian: didian, cellStateShow: cellS)
    }
    convenience init(){
        self.init(time:"20151223",didian:"meizhou",cellS:"false")
    }
}



