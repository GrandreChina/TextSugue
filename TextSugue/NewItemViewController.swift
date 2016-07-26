//
//  NewItemViewController.swift
//  TextSugue
//
//  Created by Grandre on 15/12/17.
//  Copyright © 2015年 Grandre. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {

    var textShow:String = "gg"
    
    @IBAction func cancel(sender: AnyObject) {
    
    }
    
    @IBAction func pppppp(canshu:UIStoryboardSegue){
        print(canshu)
//        
//       let sourceView = canshu.sourceViewController as! ThreeViewController
//        self.textShow  =  sourceView.textField1.text!
        print(textShow)
        print(canshu.sourceViewController)
        
        print(canshu.destinationViewController)
        
        
    }
    
    
    @IBOutlet weak var showLabel: UILabel!

    
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
      let threeV = segue.destinationViewController as! ThreeViewController
        threeV.title = "grandre"
        
        threeV.shangyiView = self
        
    }
    
    @IBAction func returnToLastView(sender: UIStoryboardSegue){
        print("hello")
    }
    
    @IBAction func returnLast(send:UIStoryboardSegue ){
//       print(send.destinationViewController)
    }
    
    @IBAction func returnToLast(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showLabel.text = textShow
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        showLabel.text = textShow
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
