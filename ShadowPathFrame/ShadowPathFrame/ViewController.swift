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
        
        view.layer.shadowPath = self.customShadowPath(viewLayer: view.layer,
                                                      shadowHeight: 5).cgPath
        
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = UIScreen.main.scale
        
        return view
    }
    
    private func customShadowPath(viewLayer layer: CALayer, shadowHeight: CGFloat) -> UIBezierPath {
        let layerX = layer.bounds.origin.x
        let layerY = layer.bounds.origin.y
        let layerWidth = layer.bounds.size.width
        let layerHeight = layer.bounds.size.height
        
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        
        path.addLine(to: CGPoint(x: layerX + layerWidth, y: layerY))
        path.addLine(to: CGPoint(x: layerX + layerWidth, y: layerHeight + 20))
        
        path.addCurve(to: CGPoint(x: 0, y: layerHeight),
                      controlPoint1: CGPoint(x: layerX + layerWidth, y: layerHeight),
                      controlPoint2: CGPoint(x: layerX, y: layerHeight))
        
        return path
    }

    
}

