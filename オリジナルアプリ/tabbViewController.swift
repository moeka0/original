//
//  tabbViewController.swift
//  オリジナルアプリ
//
//  Created by moeka on 2017/05/28.
//  Copyright © 2017年 moeka. All rights reserved.
//

import UIKit

class tabbViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UITabBar.appearance().tintColor = UIColor(red: 254/255, green: 110/255, blue: 111/255, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
