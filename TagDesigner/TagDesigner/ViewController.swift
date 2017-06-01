//
//  ViewController.swift
//  TagDesigner
//
//  Created by William Cuc on 1/06/17.
//  Copyright © 2017 William Cuc. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    @IBOutlet weak var add: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.add.layer.cornerRadius = self.add.frame.size.width/2
        self.add.clipsToBounds = true
        self.addSlideMenuButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

