//
//  DetailedInfoViewController.swift
//  SwiftApp
//
//  Created by Семен Выдрин on 31.08.2023.
//

import UIKit

final class DetailedInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(updateColors), name: Notification.Name("ThemeChanged"), object: nil)
        
        updateColors()
    }
    
    @objc func updateColors() {
        view.backgroundColor = AppTheme.backgroundColor
        UILabel.appearance().textColor = AppTheme.textColor
    }

}
