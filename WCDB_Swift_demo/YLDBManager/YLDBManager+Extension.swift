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
        debugPrint(User.Properties.name.rawValue);
        debugPrint(account.name);
        debugPrint("\(User.Properties.name.rawValue == account.name)");
        return YLDBManager.select(YLTableName.account, conditioin: nil) { (error) in
            debugPrint("筛选数据");
        }
        
    }
    
}
