//
//  UIAlertControllerExtesion.swift
//
//  Created by App Simples Ismael on 01/06/2018.
//

import UIKit

extension UIAlertController {
    
    /**
     Creates an alertView with N actions
     
     - returns: Current created alert. Make sure to present it on your ViewController
     - parameters:
        - title: Main title for alert
        - actions: The alert will display an "OK" action for popup style and a "Cancel" action or action sheet style if is not nil
        - style: Type of alert, popup or action sheet
        - actions: Takes N tuples to create each action, with the following scope: title, style and completion handler
     
    */
    public static func build(WithTitle title: String, defaultActionTitle: String?, style: UIAlertControllerStyle, actions: (title: String, style: UIAlertActionStyle, handler: (()->Void)?)...) -> UIAlertController {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        
        if let cancelAction = defaultActionTitle {
            let defaultAction = UIAlertAction(title: cancelAction, style: .cancel, handler: nil)
            alert.addAction(defaultAction)
        }

        for option in actions {
            alert.addAction(UIAlertAction(
                title: option.title,
                style: option.style,
                handler: { _ in option.handler?() }
            ))
        }
        return alert
    }
}
