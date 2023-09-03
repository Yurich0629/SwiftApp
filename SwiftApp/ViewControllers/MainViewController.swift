//
//  ViewController.swift
//  SwiftApp
//
//  Created by Илья Десятов on 30.08.2023.
//

import UIKit

final class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Уведомление о смене темы
        NotificationCenter.default.addObserver(self, selector: #selector(updateColors), name: Notification.Name("ThemeChanged"), object: nil)
        //Обновление цвета фона и текста
        updateColors()
    }
    
    @objc func updateColors() {
        view.backgroundColor = AppTheme.backgroundColor
        UILabel.appearance().textColor = AppTheme.textColor
    }
}

