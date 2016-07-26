//
//  ThreeViewController.swift
//  TextSugue
//
//  Created by Grandre on 15/12/17.
//  Copyright © 2015年 Grandre. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

    var can = ""
    var shangyiView: NewItemViewController?
    
    @IBAction func popToLast(sender: AnyObject) {
        shangyiView?.textShow = "baby"
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func fanhuishangyiceng(sender: AnyObject) {
       
       let _1View = self.navigationController?.viewControllers[1]
        
//        let _1View = self.storyboard?.instantiateViewControllerWithIdentifier("Controller1") as! Controller1
        self.navigationController?.popToViewController(_1View!, animated: true)
     
    }
    @IBOutlet weak var textField1: UITextField!
    
    @IBAction func poppp(sender: AnyObject) {
      shangyiView?.textShow = textField1.text!
        self.navigationController?.popViewControllerAnimated(true)
        
        
//        self.navigationController?.popViewControllerAnimated(true)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(shangyiView?.textShow)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.textField1.text = self.can
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
