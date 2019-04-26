//
//  MainViewController.swift
//  StoryboardStudy
//
//  Created by hello on 2019/3/14.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Main"
        myLabel.text = "MyLabel"
        myLabel.textColor = UIColor.red
    }
    
    @IBAction func changeAction(_ sender: UIButton) {
        if myLabel.textColor == UIColor.red {
            myLabel.text = "Yes,it is selected!"
            myLabel.textColor = UIColor.green
        }else{
            myLabel.text = "No,it is not selected!"
            myLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func JumpCodeAction(_ sender: UIButton) {
//        let vc = TargetViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
//        self.present(vc, animated: true, completion: nil)
        
        /*
         跳转到storyboard要用下面这种方式, 上面的方式是重新新建一个TargetViewController() 然后跳过去
         **/
        let vcStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = vcStoryboard.instantiateViewController(withIdentifier: "Target1001")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
