//
//  ViewController.swift
//  WCDB_Swift_demo
//
//  Created by 吕陈强 on 2018/3/19.
//  Copyright © 2018年 吕陈强. All rights reserved.
//

import UIKit
import WCDBSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        //添加数据
      
        
        
        
        
        // 删除数据
    try? YLDataBase.account.db.delete(fromTable: YLTableName.account.tableName, where: User.Properties.name != "asdasda", orderBy: nil, limit: nil, offset: nil);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func addUser(_ sender: Any) {
        
        let user = User();
        user.uid = "10011";
        user.name = "qweq1adasdwe"
        user.sex = 1;
        user.mobile = "17011962766"
        
        
        YLDBManager.default.addUserAccount(user);
        
        
    }
    
    
    
    @IBAction func deleteUser(_ sender: Any) {
        let user = User();
        user.uid = "100";
        user.name = "qweq1adasdwe"
        user.sex = 0;
        user.mobile = "17011962766"
        
        
        YLDBManager.default.deleteUserAccount(user);
        
    }
    
    
    @IBAction func checkUser(_ sender: Any) {
        
        let user = User();
        user.uid = "100";
        user.name = "qweqwe"
        user.sex = 0;
        user.mobile = "17011962766"
    
        
        if let users = YLDBManager.default.selectUser(user) {
            for u in users{
                debugPrint("\(u.name)=====\(u.mobile)")
            }
        }
        
    }
    
    
    
}

