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
        
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.3
        
        return view
    }

    
}

