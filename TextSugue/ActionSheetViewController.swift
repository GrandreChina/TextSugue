//
//  ActionSheetViewController.swift
//  TextSugue
//
//  Created by Grandre on 15/12/22.
//  Copyright © 2015年 Grandre. All rights reserved.
//

import UIKit
class ActionSheetViewController: UIViewController,UIActionSheetDelegate,UIAlertViewDelegate{
    @IBOutlet weak var loading: UIActivityIndicatorView!
    @IBOutlet weak var imageV: UIImageView!
    @IBAction func download(sender: AnyObject) {
        var textF1 = UITextField()
        let alertC = UIAlertController(title: "Alert Title", message: "Subtitle", preferredStyle: UIAlertControllerStyle.Alert)
        let alertA = UIAlertAction(title: "1", style: UIAlertActionStyle.Default) { (act) -> Void in
//            print(textF1.text)
             NSNotificationCenter.defaultCenter().removeObserver(self)
            print("grandre")
        }
        alertC.addTextFieldWithConfigurationHandler { (textField1) -> Void in
            textF1 = textField1
            textF1.placeholder = "hello grandre"
            NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleFuntion:", name: UITextFieldTextDidChangeNotification, object: textField1)
        }
        
        alertC.addAction(alertA)
//        self.showViewController(alertC, sender: nil)
        self.presentViewController(alertC, animated: true, completion: nil)
        loading.startAnimating()
       
    }
    func handleFuntion(notification: NSNotification) {
        let textFied = notification.object as! UITextField
        print("-----\(textFied.text)")
    }
    @IBAction func stopBtn(sender: AnyObject) {
        loading.stopAnimating()
        
//        imageV.animationImages = (1...4).map({ (int) -> UIImage in
//            UIImage(named: "MyLucky\(int)")!
//        })
        
       
//        imageV.animationImages = (1...4).map{
//            UIImage(named: "MyLucky\($0)")!
//        }

        
        var arr = [UIImage]()
        for i in (1...4){
            arr.append(UIImage(named: "MyLucky\(i)")!)
        }
        imageV.animationImages = arr
        imageV.contentMode = .ScaleAspectFit
        imageV.animationDuration = 0.5
        imageV.center = self.view.center
        imageV.startAnimating()

        
    }
    
    @IBOutlet weak var label1: UILabel!

    @IBAction func shareButtonTapped(sender: AnyObject) {
//        let actionSheet = UIActionSheet(title: "share", delegate: self, cancelButtonTitle: "cancel", destructiveButtonTitle: "share to weibo")
//        
//        actionSheet.actionSheetStyle = .BlackOpaque
//        
//        actionSheet.showInView(self.view)
        let alartView = UIAlertController(title: "share", message: "share method", preferredStyle: UIAlertControllerStyle.Alert)
        
        alartView.addTextFieldWithConfigurationHandler { (UITextField) -> Void in
            UITextField.placeholder = "name"
            UITextField.clearButtonMode = UITextFieldViewMode.WhileEditing
        }
        let alertAction = UIAlertAction(title: "share to QQ", style: UIAlertActionStyle.Default, handler: nil)
        alartView.addAction(alertAction)
        
        let alertAction1 = UIAlertAction(title: "share to weichat", style: UIAlertActionStyle.Destructive, handler: nil)
        alartView.addAction(alertAction1)
        
        let alertAction2 = UIAlertAction(title: "share to renren", style: UIAlertActionStyle.Default) { (alertAction2) -> Void in
            print("gr------")
           self.label1.text = alertAction2.title
            
            
            
        }
        alartView.addAction(alertAction2)
        
        let alertAction3 = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel){(_)->Void in
            
        }
        alartView.addAction(alertAction3)
        
        self.presentViewController(alartView, animated: true, completion:nil)
    }
    
    
    
    
    
    
//    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
//        label1.text = actionSheet.buttonTitleAtIndex(buttonIndex)
//        
//    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
