//
//  main.swift
//  CompositeModelDemo
//
//  Created by lcc on 2017/3/9.
//  Copyright © 2017年 early bird international. All rights reserved.
//

import Foundation

var root:ComponmentDelegate = PartDealDepartment.init(name: "北京公司总部");

root.add(componment: ResourcePerson.init(name: "人力资源部（北京）"));
root.add(componment: FinanceDepartment.init(name: "财务部(北京)"));

var comp:PartDealDepartment = PartDealDepartment.init(name: "上海华东分公司");
comp.add(componment: ResourcePerson.init(name: "人力资源部（上海分公司）"));
comp.add(componment: FinanceDepartment.init(name: "财务部（上海分公司）"));

var comp2:PartDealDepartment = PartDealDepartment.init(name: "南京办事处");
comp2.add(componment:  ResourcePerson.init(name: "人力资源部（南京办事处）"));
comp2.add(componment:  FinanceDepartment.init(name: "财务部（南京办事处）"));

var comp3:PartDealDepartment = PartDealDepartment.init(name: "杭州办事处");
comp3.add(componment:  ResourcePerson.init(name: "人力资源部（杭州办事处）"));
comp3.add(componment:  FinanceDepartment.init(name: "财务部（杭州办事处）"));


//添加链接组合
comp.add(componment: comp2);
comp.add(componment: comp3);
root.add(componment: comp);

//显示组合之后的链接关系
root.display(currentDepth: 1);



