//
//  ViewController.swift
//  Example
//
//  Created by Winapp Developer on 21/01/2019.
//  Copyright © 2019 Ayus Salleh. All rights reserved.
//

import UIKit
import WAActionSheetController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let alert = WAActionSheetController()
        alert.addAction(title: "Test", titleTextColor: nil, titleFont: nil, icon: nil, iconColor: nil) { (action) in
            print("hye")
        }

        alert.addSystemAction(title: "Cancel", style: .cancel, handler: nil)
        self.present(alert, animated: true, completion: nil)
    }


}

