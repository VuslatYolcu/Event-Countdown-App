//
//  UIViewController+Extensions.swift
//  EventsApp
//
//  Created by Vuslat Yolcu on 12.04.2023.
//

import UIKit

extension UIViewController {
    
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "\(T.self)") as! EventListViewController as! T
        return controller
    }
}
