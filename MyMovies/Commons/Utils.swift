//
//  Utils.swift
//  MyMovies
//
//  Created by Eduardo Bastos on 16/10/22.
//

import Foundation
import UIKit

struct HomeSection {
    static let recommendation = 0
    static let category = 1
    static let popular = 2
    static let toprated = 3
    static let upcoming = 4
}

struct DetailSection {
    static let info = 0
    static let rating = 1
    static let series = 2
    static let video = 3
    static let recommend = 4
}

public func heightStatusBar() -> CGFloat {
    if #available(iOS 13.0, *) {
        let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        let height = window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        return height
    } else {
        return UIApplication.shared.statusBarFrame.height
    }
}
