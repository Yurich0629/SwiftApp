//
//  SettingsViewController.swift
//  SwiftApp
//
//  Created by Семен Выдрин on 31.08.2023.
//

import UIKit

final class SettingsViewController: UIViewController {

    @IBOutlet var blackButton: UIButton!
    @IBOutlet var grayButton: UIButton!
    @IBOutlet var brownButton: UIButton!
    @IBOutlet var whiteButton: UIButton!
    
    @IBOutlet var maxSizeFont: UIButton!
    @IBOutlet var minSizeFont: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        updateColors()
    }
    
    @IBAction func setColorDidTapped(_ sender: UIButton) {
        switch sender {
        case blackButton:
            AppTheme.backgroundColor = .black
            AppTheme.textColor = .white
        case grayButton:
            AppTheme.backgroundColor = .gray
            AppTheme.textColor = .white
        case brownButton:
            AppTheme.backgroundColor = .brown
            AppTheme.textColor = .white
        default:
            AppTheme.backgroundColor = .white
            AppTheme.textColor = .black
        }
        NotificationCenter.default.post(name: Notification.Name("ThemeChanged"), object: nil)
        updateColors()
    }
    
    @objc func updateColors() {
        view.backgroundColor = AppTheme.backgroundColor
        UILabel.appearance().textColor = AppTheme.textColor
    }
        
        private func setupUI() {
            blackButton.layer.cornerRadius = blackButton.frame.height / 2
            grayButton.layer.cornerRadius = grayButton.frame.height / 2
            brownButton.layer.cornerRadius = brownButton.frame.height / 2
            whiteButton.layer.cornerRadius = whiteButton.frame.height / 2
            
            blackButton.layer.borderColor = UIColor.white.cgColor
            grayButton.layer.borderColor = UIColor.white.cgColor
            brownButton.layer.borderColor = UIColor.white.cgColor
            whiteButton.layer.borderColor = UIColor.black.cgColor
            
            blackButton.layer.borderWidth = 0.5
            grayButton.layer.borderWidth = 0.5
            brownButton.layer.borderWidth = 0.5
            whiteButton.layer.borderWidth = 0.5
        }

}

