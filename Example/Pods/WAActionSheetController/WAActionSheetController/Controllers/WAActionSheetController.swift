//
//  WAActionSheetController.swift
//  WAActionSheetController
//
//  Created by Ayus Salleh on 21/01/2019.
//  Copyright © 2019 Ayus Salleh. All rights reserved.
//

import UIKit

public class WAActionSheetController: UIAlertController {

    public func addAction(title: String, titleTextColor: UIColor?, titleFont: UIFont?, icon: UIImage?, iconColor: UIColor?, handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: "Camera", style: .default) { action in
            if let handler = handler { handler(action) }
        }
        
        let vc = WAActionSheetContentViewController.initVC(title: title, titleTextColor: titleTextColor, titleFont: titleFont, icon: icon, iconColor: iconColor)
        action.setValue(vc, forKey: "contentViewController")
        
        super.addAction(action)
    }
    
    public func addSystemAction(title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Void)?) {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        super.addAction(action)
    }

}
