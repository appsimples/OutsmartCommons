//
//  ViewController.swift
//  OutsmartCommons
//
//  Created by Bele Sprengel on 06/01/2018.
//  Copyright (c) 2018 Bele Sprengel. All rights reserved.
//

import UIKit
import OutsmartCommons

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loading = LoadingOverlay.shared
        loading.showOverlay(view: self.view)
        loading.setIndicatorColor(color: UIColor.white)
        loading.setBackgroundColor(color: UIColor.orange)
        loading.setBackgroundSize(size: 80)
        loading.setIndicatorSize(size: 80)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

