//
//  EditViewController.swift
//  ThreeGirlsFriend
//
//  Created by MyMac on 2017/3/10.
//  Copyright © 2017年 Jack Lai. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    var name: String?
    var star: String?
    @IBOutlet var starTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    
    @IBAction func Back(_ sender: Any) {
        
        let notificationName = Notification.Name("GetUpdateName")
        NotificationCenter.default.post(name: notificationName,
                                        object: nil, userInfo: ["name":self.nameTextField.text!])
        let notificationConstellation = Notification.Name("GetUpdateStar")
        NotificationCenter.default.post(name: notificationConstellation,
                                        object: nil, userInfo: ["star":self.starTextField.text!])
    
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
