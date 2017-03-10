//
//  ComponmentRoot.swift
//  CompositeModelDemo
//
//  Created by lcc on 2017/3/9.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import Cocoa

protocol ComponmentDelegate {
    
    var name:String?{get set};
    
    //添加子部门
    func add(componment:ComponmentDelegate);
    
    //移除子部门
    func remove(componment:ComponmentDelegate);
    
    //展示当前的部门职责以及当前的层级深度
    func display(currentDepth:Int);
    
}
