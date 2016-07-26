//
//  ViewController.swift
//  TextSugue
//
//  Created by Grandre on 15/12/17.
//  Copyright © 2015年 Grandre. All rights reserved.
//

import UIKit

class Controller1: UIViewController {
    @IBAction func presentNext(sender: AnyObject) {
        
        
    }
    @IBAction func pushToNext(sender: AnyObject) {
   
        let _3View =   self.storyboard?.instantiateViewControllerWithIdentifier("ThreeViewController") as! ThreeViewController
        _3View.can = "grandre"
        
        
//        let _2View = self.navigationController?.viewControllers
        
//        for item in  _2View!
//        {
//            print(item)
//        }
        self.navigationController?.pushViewController(_3View, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func huilai(sender: UIStoryboardSegue){
        
    }

}

