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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let myAlert = UIAlertController.build(WithTitle: "Title", defaultActionTitle: "Ok", style: .alert, options: ("Action title", .default, {
            print("Done")
        }))
        present(myAlert, animated: true, completion: nil)
    }

}

