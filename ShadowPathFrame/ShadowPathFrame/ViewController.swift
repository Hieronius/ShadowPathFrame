//
//  ViewController.swift
//  ShadowPathFrame
//
//  Created by Арсентий Халимовский on 13.08.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(self.newView())
    }
    
    // MARK: - Private Methods
    
    private func newView() -> UIView {
        let view = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view.backgroundColor = .blue
        
        return view
    }

    
}

