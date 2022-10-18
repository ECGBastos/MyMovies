//
//  UINavigationController+Extension.swift
//  MyMovies
//
//  Created by Eduardo Bastos on 16/10/22.
//

import Foundation
import UIKit

extension UINavigationController {
    
    @objc public class func currentActiveNavigationController() -> UINavigationController? {
        let keyWindow = UIApplication.shared.windows.first { $0.isKeyWindow }
        if let navi = keyWindow?.rootViewController?.presentedViewController as? UINavigationController {
            return navi
        }
        let windows = UIApplication.shared.windows;
        var ortherNavi: UINavigationController?
        
        for oneWindow in windows {
            if let tab = oneWindow.rootViewController as? UITabBarController {
                return tab.selectedViewController as? UINavigationController
            }
            if let navi = oneWindow.rootViewController as? UINavigationController {
                ortherNavi =  navi
            }
        }
        return ortherNavi
    }
    
}
