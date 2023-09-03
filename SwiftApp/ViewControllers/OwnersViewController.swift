//
//  OwnersViewController.swift
//  SwiftApp
//
//  Created by Семен Выдрин on 31.08.2023.
//

import UIKit

final class OwnersViewController: UIViewController {
    
    @IBOutlet var semenImageView: UIImageView!
    @IBOutlet var iliyaImageView: UIImageView!
    @IBOutlet var genaImageView: UIImageView!
    
    @IBOutlet var titleOwnerLabel: UILabel!
    @IBOutlet var titleAboutProject: UILabel!
    
    @IBOutlet var semenNameLabel: UILabel!
    @IBOutlet var iliyaNameLabel: UILabel!
    @IBOutlet var genaNameLabel: UILabel!
    
    @IBOutlet var bioSemenLabel: UILabel!
    @IBOutlet var bioIliyaLabel: UILabel!
    @IBOutlet var bioGenaLabel: UILabel!
    
    @IBOutlet var aboutProject: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateColors), name: Notification.Name("ThemeChanged"), object: nil)
        
        updateColors()
    }
    
    @IBAction func cancelButtonDidTapped() {
        dismiss(animated: true)
    }
    
    private func setupUI() {
        semenImageView.layer.cornerRadius = semenImageView.frame.height / 2
        iliyaImageView.layer.cornerRadius = iliyaImageView.frame.height / 2
        genaImageView.layer.cornerRadius = genaImageView.frame.height / 2
    }
    
    @objc func updateColors() {
        view.backgroundColor = AppTheme.backgroundColor
        UILabel.appearance().textColor = AppTheme.textColor
    }
}
