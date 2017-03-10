//
//  FinanceDepartment.swift
//  CompositeModelDemo
//
//  Created by lcc on 2017/3/9.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import Cocoa

class FinanceDepartment:ComponmentDelegate {
    
    var name: String?;
    
    init(name:String) {
        self.name = name;
    }

    
    func add(componment: ComponmentDelegate) {
        
        print("不能够增加子节点，我是叶子,没有权限-" + self.name!);
    }
    
    func remove(componment: ComponmentDelegate) {
        
        print("不能删除节点，我是叶子，没有权限-" + self.name!);
    }
    
    func display(currentDepth: Int) {
        
        print("\(String.init(repeating: "-", count: currentDepth))" + self.name!);
    }
}
