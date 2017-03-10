//
//  PartDealDepartment.swift
//  CompositeModelDemo
//
//  Created by lcc on 2017/3/9.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import Cocoa

class PartDealDepartment:ComponmentDelegate{
    
    var name: String?;
    
    init(name:String) {
        self.name = name;
    }

    var childArray: NSMutableArray?;
    
    func add(componment: ComponmentDelegate) {
        
        if childArray == nil {
            childArray = NSMutableArray.init();
        }
        
        self.childArray?.add(componment);
    }
    
    func remove(componment: ComponmentDelegate) {
        self.childArray?.remove(componment);
    }
    
    func display(currentDepth: Int) {
        
        //显示当前的层级
        print("\(String.init(repeating: "-", count: currentDepth))" + self.name!);
        
    
        if childArray != nil {
            
            for var componment in childArray!{
                
                //显示所属之下的部门
                (componment as! ComponmentDelegate).display(currentDepth: currentDepth + 1);
                
            }
            
            
            
        }
    }
}
