//
//  Target2ViewController.swift
//  StoryboardStudy
//
//  Created by hello on 2019/3/14.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit

class Target2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func comeback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}
