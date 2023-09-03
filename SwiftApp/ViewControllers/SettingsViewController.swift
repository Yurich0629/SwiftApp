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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blackButton.layer.cornerRadius = blackButton.frame.height / 2
        grayButton.layer.cornerRadius = grayButton.frame.height / 2
        brownButton.layer.cornerRadius = brownButton.frame.height / 2
        whiteButton.layer.cornerRadius = whiteButton.frame.height / 2
        
        whiteButton.layer.borderColor = UIColor.black.cgColor
        whiteButton.layer.borderWidth = 0.5
    }

    @IBAction func setColorDidTapped(_ sender: UIButton) {
        
        }
    }

