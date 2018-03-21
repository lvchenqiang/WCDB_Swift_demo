//
//  YLDBManager+Extension.swift
//  WCDB_Swift_demo
//
//  Created by 吕陈强 on 2018/3/20.
//  Copyright © 2018年 吕陈强. All rights reserved.
//

import Foundation

import WCDBSwift
extension YLDBManager {
    
    func addUserAccount(_ account:User){
        YLDBManager.insert(YLTableName.account, objects: [account], errorClosure: { (error) in
            debugPrint("\(String(describing: error))")
        }) {
            debugPrint("更新账号信息");
        }
    }
    
    
    func deleteUserAccount(_ account:User){
        YLDBManager.delete(YLTableName.account, conditioin: User.Properties.name == account.name) { (error) in
            debugPrint("删除用户资料报错");
        }
    }
    
    
    func selectUser(_ account:User)->[User]? {
        return YLDBManager.select(YLTableName.account, conditioin: User.Properties.name == account.name) { (error) in
            debugPrint("筛选数据");
        }
        
    }
    
    

    func addUserChild(_ child:Children){
        
        YLDBManager.insert(YLTableName.children, objects: [child], errorClosure: { (error) in
            debugPrint("添加孩子失败");
        }) {
            debugPrint("添加孩子")
        }
    }
    
    
    func checkUserChild(_ account:User) -> [Children]?{
      return  YLDBManager.select(YLTableName.children, conditioin: Children.Properties.parentId == account.uid) { (error) in
            debugPrint("查询失败");
        };
        
        
    }
    
    
    
}
