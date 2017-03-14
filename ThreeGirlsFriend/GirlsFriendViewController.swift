//
//  GirlsFriendViewController.swift
//  ThreeGirlsFriend
//
//  Created by MyMac on 2017/3/9.
//  Copyright © 2017年 Jack Lai. All rights reserved.
//

import UIKit
struct Info{
    
    var name:String = ""
    var star:String = ""
    var image:String = ""
}
class GirlsFriendViewController: UIViewController {

    
    var girlsdata = [
        Info(name : "羅小姐", star : "水瓶座", image : "Luo.jpg"),
        Info(name : "高小姐", star : "射手座", image : "2.jpg"),
        Info(name : "張小姐", star : "牡羊座", image : "3.jpg"),
        ]
    
    @IBAction func girlschoose(_ sender: UIBarButtonItem) {

        let controller = self.storyboard?.instantiateViewController(withIdentifier:
                    "InfoController") as? InfoViewController
        
        self.navigationController?.pushViewController(controller!,animated: true)
        
        controller?.detailInfo = girlsdata[sender.tag]
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
