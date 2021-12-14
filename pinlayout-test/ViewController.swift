//
//  ViewController.swift
//  pinlayout-test
//
//  Created by 김부성 on 2021/11/30.
//

import UIKit
import Then
import PinLayout

class ViewController: UIViewController {

    private let view1: UIView = UIView().then {
        $0.backgroundColor = .systemBlue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.view1)
    }
    
    // SafeArea, Rotate Code need to be written here
    override func viewDidLayoutSubviews() {
        view1.pin.all(self.view.pin.safeArea)
    }

}
