//
//  textTableViewController.swift
//  TextSugue
//
//  Created by Grandre on 15/12/19.
//  Copyright © 2015年 Grandre. All rights reserved.
//

import UIKit

class textTableViewController: UITableViewController {

//    let didian = ["阳朔","兰溪","竹海","兴宁","桂林"]
//    var cellStateShow:[String] = ["🈚️","🈚️","🈚️","🈚️","🈚️"]
    var diFangArr:[DiFang] = [
        DiFang(didian: "阳朔"),DiFang(didian: "兴宁"),DiFang(didian: "桂林")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()


        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        let lvYouDidian = LvYou(time: "20151222", didian: "九寨沟", cellS: "false")
//        print(lvYouDidian.didian)
        let ly = LvYou()
        print(ly.cellStateShow)
    }
  

    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: true)
        tableView.setEditing(editing, animated: true)
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.Delete
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            diFangArr.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return diFangArr.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PCell", forIndexPath: indexPath)

        // Configure the cell...
//      let title =  cell.viewWithTag(2) as! UILabel
//        title.text = didian[indexPath.row]
        
        cell.textLabel?.text = diFangArr[indexPath.row].didian
        cell.detailTextLabel?.text = diFangArr[indexPath.row].cellStateShow
        
//        let ce = cell.contentView.subviews[0] as! UILabel
//        ce.text = didian[indexPath.row]
//        
//        let ce1 = cell.contentView.subviews[1] as! UILabel
//        ce1.text = didian[indexPath.row]
      
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        
        let selectCell = tableView.visibleCells[indexPath.row]
//        print(selectCell)
//        selectCell.accessoryType  = UITableViewCellAccessoryType.Checkmark
        
        switch selectCell.accessoryType {
        case .None : selectCell.accessoryType  = .Checkmark
        default:selectCell.accessoryType  = .None
        }
//        var cellState = selectCell.detailTextLabel!.text!

//                let cell = tableView.dequeueReusableCellWithIdentifier("PCell", forIndexPath: indexPath)
//        print(cell)
//        var cellState = cell.detailTextLabel!.text!
//        print(cellState)
        var state = diFangArr[indexPath.row].cellStateShow
        switch state{
            case "✅" :
                diFangArr[indexPath.row].cellStateShow = "🈚️"
            default:
                diFangArr[indexPath.row].cellStateShow = "✅"
        }
        print(state)
        tableView.reloadData()
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
