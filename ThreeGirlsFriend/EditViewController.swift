//
//  EditViewController.swift
//  ThreeGirlsFriend
//
//  Created by MyMac on 2017/3/10.
//  Copyright © 2017年 Jack Lai. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet var starTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!

    var editInfo = Info()
    
    @IBAction func Back(_ sender: Any) {
        
        editInfo.name = nameTextField.text!
        editInfo.star = starTextField.text!
        
        let notificationName = Notification.Name("GetUpdateInfo")
        
        NotificationCenter.default.post(name: notificationName,
                                        object: nil, userInfo: ["Info":self.editInfo])
    
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.text = editInfo.name
        starTextField.text = editInfo.star
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
