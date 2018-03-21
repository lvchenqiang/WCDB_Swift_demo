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
        
        debugPrint(NSHomeDirectory());
        
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
        user.name = "qweq1adasdwe"
        user.sex = 0;
        user.mobile = "17011962766"
    
        
        if let users = YLDBManager.default.selectUser(user) {
            for u in users{
                debugPrint("\(u.name)=====\(u.mobile)")
            }
        }
        
    }
    
    
    
    
    @IBAction func addChild(_ sender: Any) {
    
        let child = Children();
        child.age = 10;
        child.name = "哈哈😁"
        child.sex = 1;
        
        YLDBManager.default.addUserChild(child);
        
    }
    
    
    
    
    @IBAction func checkChildren(_ sender: Any) {
        
        let user = User();
        user.uid = "100";
        user.name = "qweq1adasdwe"
        user.sex = 0;
        user.mobile = "17011962766"
        
        if let childs = YLDBManager.default.checkUserChild(user){
            for child in childs{
                debugPrint("\(child.name) -----\(child.parentId)");
            }
        }
        
        
        
        
    }
    
    
    
}

