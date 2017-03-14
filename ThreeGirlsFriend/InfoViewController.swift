//
//  InfoViewController.swift
//  ThreeGirlsFriend
//
//  Created by MyMac on 2017/3/9.
//  Copyright © 2017年 Jack Lai. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    var detailname:String!
    var detailstar:String!
    var detailimage:String!
    
    @IBOutlet var starLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
        override func prepare(for segue: UIStoryboardSegue, sender:
            Any?) {
            //let button = sender as! UILabel
            let controller = segue.destination as!
            EditViewController
            controller.name = nameLabel.text
            controller.star = starLabel.text
    }
    func getUpdateNoti(noti:Notification) {
        print(noti.userInfo!)
        let name = noti.userInfo!["name"] as! String
        self.nameLabel.text = name
    }
    func getUpdateNoti2(noti:Notification) {
        print(noti.userInfo!)
        let star = noti.userInfo!["star"] as! String
        self.starLabel.text = star
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.detailname
        self.starLabel.text = self.detailstar
        let notificationName = Notification.Name("GetUpdateName")
        let notificationStar = Notification.Name("GetUpdateStar")
        NotificationCenter.default.addObserver(self, selector:#selector(InfoViewController.getUpdateNoti(noti:)), name: notificationName,object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(InfoViewController.getUpdateNoti2(noti:)), name: notificationStar,object: nil)
        //_ = self.navigationController?.popViewController(animated: true)
        // Do any additional setup after loading the view.
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
