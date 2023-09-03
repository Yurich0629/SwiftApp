//
//  TopicViewController.swift
//  SwiftApp
//
//  Created by Семен Выдрин on 31.08.2023.
//

import UIKit

final class TopicViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var programmingButton: UIButton!
    @IBOutlet var uiKitButton: UIButton!
    @IBOutlet var dataHandlingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        //Уведомление о смене темы
        NotificationCenter.default.addObserver(self, selector: #selector(updateColors), name: Notification.Name("ThemeChanged"), object: nil)
        //Обновление цвета фона и текста
        updateColors()
    }
    
    private func setupUI() {
        programmingButton.layer.cornerRadius = 15
        uiKitButton.layer.cornerRadius = 15
        dataHandlingButton.layer.cornerRadius = 15
    }
    
    @objc func updateColors() {
        view.backgroundColor = AppTheme.backgroundColor
        UILabel.appearance().textColor = AppTheme.textColor
    }
    
}
