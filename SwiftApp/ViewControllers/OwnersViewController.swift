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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        semenImageView.layer.cornerRadius = semenImageView.frame.height / 2
        iliyaImageView.layer.cornerRadius = iliyaImageView.frame.height / 2
        genaImageView.layer.cornerRadius = genaImageView.frame.height / 2
    }
    
    @IBAction func cancelButtonDidTapped() {
        dismiss(animated: true)
    }
    
}
