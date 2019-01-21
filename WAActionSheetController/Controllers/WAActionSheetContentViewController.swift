//
//  ActionSheetContentViewController.swift
//  Ayus Salleh
//
//  Created by Ayus Salleh on 20/01/2019.
//  Copyright © 2019 Ayus Salleh. All rights reserved.
//

import UIKit

class WAActionSheetContentViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var titleLbl: String = ""
    var titleTextColor: UIColor?
    var titleFont: UIFont?
    var icon: UIImage?
    var iconColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let titleTextColor = titleTextColor {
            label.textColor = titleTextColor
        }
        
        if let titleFont = titleFont {
            label.font = titleFont
        }
        
        if let icon = icon {
            imageView.image = icon.withRenderingMode(.alwaysTemplate)
        }
        
        if let iconColor = iconColor {
            imageView.tintColor = iconColor
        }
        
        label.text = titleLbl
        imageView.isHidden = imageView.image == nil 
    }
    
    class func initVC(title: String, titleTextColor: UIColor?, titleFont: UIFont?, icon: UIImage?, iconColor: UIColor?) -> UIViewController {
        let storyboard = UIStoryboard(name: "WAActionSheetContentViewController", bundle: .main)
        let vc = storyboard.instantiateViewController(withIdentifier: "WAActionSheetContentViewController") as! WAActionSheetContentViewController
        vc.titleLbl = title
        vc.titleTextColor = titleTextColor
        vc.titleFont = titleFont
        vc.icon = icon
        vc.iconColor = iconColor
        return vc
    }

}
