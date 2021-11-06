//
//  MainViewController.swift
//  HW 2
//
//  Created by Ekaterina Kugeneva on 06.11.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(_ colorBG: UIColor)
}

class MainViewController: UIViewController {
    @IBOutlet var backView: UIView!
    private var backGround = UIColor(red: CGFloat(1), green: CGFloat(1), blue: CGFloat(1),alpha: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
        backView.backgroundColor = backGround
     
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let navigationVC = segue.destination as? UINavigationController else { return }
    guard let settingsVC = navigationVC.topViewController as? ViewController else { return }
    settingsVC.backGroundColor = backView.backgroundColor!
    settingsVC.delegate = self
    }
}
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(_ colorBG: UIColor) {
        backView.backgroundColor = colorBG
    }
    
   
}
