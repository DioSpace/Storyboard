//
//  TargetViewController.swift
//  StoryboardStudy
//
//  Created by hello on 2019/3/14.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit

class TargetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "target"
    }
    
    
    
    @IBAction func toNext(_ sender: UIButton) {
        let vcStoryboard = UIStoryboard.init(name: "Next", bundle: nil)
        let vc = vcStoryboard.instantiateViewController(withIdentifier: "nextstoryboardTarget2")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
