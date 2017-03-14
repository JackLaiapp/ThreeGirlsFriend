//
//  InfoViewController.swift
//  ThreeGirlsFriend
//
//  Created by MyMac on 2017/3/9.
//  Copyright © 2017年 Jack Lai. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    var detailInfo = Info()
    
    @IBOutlet var starLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
        override func prepare(for segue: UIStoryboardSegue, sender:
            Any?) {

            let controller = segue.destination as! EditViewController
            
            controller.editInfo = detailInfo

    }
    
    func getUpdateNoti(noti:Notification) {

        let Info = noti.userInfo!["Info"] as! Info
        
        nameLabel.text = Info.name
        starLabel.text = Info.star
        imageView.image = UIImage(named: Info.image)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = detailInfo.name
        starLabel.text = detailInfo.star
        imageView.image = UIImage(named: detailInfo.image)
        
        let notificationName = Notification.Name("GetUpdateInfo")

        NotificationCenter.default.addObserver(self, selector:#selector(InfoViewController.getUpdateNoti(noti:)), name: notificationName,object: nil)
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
