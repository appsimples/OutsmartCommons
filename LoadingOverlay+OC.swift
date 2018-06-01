//
//  LoadingOverlay+OC.swift
//  FBSnapshotTestCase
//
//  Created by Outsmart on 01/06/2018.
//

import Foundation
import UIKit

public class LoadingOverlay {
    
    var overlayView : UIView!
    var activityIndicator : UIActivityIndicatorView!
    
    class var shared: LoadingOverlay {
        struct Static {
            static let instance: LoadingOverlay = LoadingOverlay()
        }
        return Static.instance
    }
    
    init(){
        self.overlayView = UIView()
        self.activityIndicator = UIActivityIndicatorView()
        
        overlayView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        overlayView.backgroundColor = UIColor(white: 0, alpha: 0.4)
        overlayView.clipsToBounds = true
        overlayView.layer.cornerRadius = 10
        overlayView.layer.zPosition = 1
        
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        let bounds = overlayView.bounds
        activityIndicator.center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        activityIndicator.activityIndicatorViewStyle = .whiteLarge
        overlayView.addSubview(activityIndicator)
    }
    
    @available(*, deprecated, message: "Essa função não centraliza o loading em todas a views")
    public func showOverlay(view: UIView) {
        let bounds = UIScreen.main.bounds
        overlayView.center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        view.addSubview(overlayView)
        activityIndicator.startAnimating()
    }
    
    public func showOverlay() {
        let bounds = UIScreen.main.bounds
        let window = UIApplication.shared.keyWindow
        overlayView.center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        window?.addSubview(overlayView)
        activityIndicator.startAnimating()
    }
    
    public func hideOverlayView() {
        activityIndicator.stopAnimating()
        overlayView.removeFromSuperview()
    }
    
    public func setBackgroundColor(color: UIColor) {
        overlayView.backgroundColor = color
    }
    
    public func setIndicatorColor(color: UIColor) {
        activityIndicator.color = color
    }
    
    public func setIndicatorSize(size: CGFloat) {
        overlayView.frame = CGRect(x: 0, y: 0, width: size, height: size)
    }
    
    public func setBackgroundSize(size: CGFloat) {
        activityIndicator.frame = CGRect(x: 0, y: 0, width: size, height: size)
    }
}


