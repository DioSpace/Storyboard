//
//  ThirdViewController.swift
//  StoryboardStudy
//
//  Created by hello on 2019/3/14.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let barButtonItem = UIBarButtonItem.init(title: "跳转", style: .plain, target: self, action: #selector(jumpAction))
        self.navigationItem.rightBarButtonItem = barButtonItem
    }

    @objc func jumpAction() {
        let vcStoryboard = UIStoryboard.init(name: "Next", bundle: nil)
        let vc = vcStoryboard.instantiateViewController(withIdentifier: "nextstoryboardTarget2")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
