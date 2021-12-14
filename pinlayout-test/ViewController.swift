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
        $0.backgroundColor = .lightGray
    }
    
    private let view2: UIView = UIView().then {
        $0.backgroundColor = .systemBlue
    }
    
    private let view3: UIView = UIView().then {
        $0.backgroundColor = .lightGray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [view1, view2, view3].forEach { self.view.addSubview($0) }
    }
    
    // SafeArea, Rotate Code need to be written here
    override func viewDidLayoutSubviews() {
        self.view1.pin.centerLeft(to: self.view.anchor.centerLeft)
            .width(100)
            .aspectRatio(1)
        self.view3.pin.centerRight(to: self.view.anchor.centerRight)
            .width(100)
            .aspectRatio(1)
        self.view2.pin.horizontallyBetween(self.view1, and: self.view3)
            .topLeft(to: view1.anchor.topRight)
            .bottomRight(to: view3.anchor.bottomLeft)
            .marginHorizontal(10)
    }

}
