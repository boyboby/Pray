//
//  MyPrayViewController.swift
//  Pray
//
//  Created by Felix on 2019/2/11.
//  Copyright © 2019 PL. All rights reserved.
//

import UIKit

class MyPrayViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hopesData.count
    }
    

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyPrayCell", for: indexPath)
        let myPray = hopesData[indexPath.row].name
        cell.textLabel?.text = myPray
        
        let prayType = hopesData[indexPath.row].label
        let userDefaults: UserDefaults = UserDefaults.standard
        let iPrayNum = userDefaults.integer(forKey: String(prayType)+"Num")
    
        cell.detailTextLabel?.text = "祈福次数：\(iPrayNum)"
        // Configure the cell...
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "HopeCell", for: indexPath)
//
//        let hope = hopes[indexPath.row] as Hope
//        cell.textLabel?.text = hope.name
//        cell.detailTextLabel?.text = hope.desc
//        cell.imageView?.accessibilityIdentifier = hope.name
//
//        return cell
//    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        if segue.identifier! == "myPraytoPray"{
            //            let showHopeView = segue.destination as! showHopeViewController
            //            showHopeView.prayType = hopes[tableView.indexPathForSelectedRow!.row].label
            //            print("when prepare,selectPray:\(showHopeView.prayType)")
            
            let userDefaults: UserDefaults = UserDefaults.standard
            
            
            userDefaults.set(hopesData[tableView.indexPathForSelectedRow!.row].label, forKey: "PrayType")
            
            // 同步数据，把数据持久化到 standardUserDefaults 数据库
            userDefaults.synchronize()
            
            
        }
     }
    
    
}
