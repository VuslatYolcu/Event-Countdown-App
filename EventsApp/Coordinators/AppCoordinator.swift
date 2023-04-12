//
//  AppCoordinator.swift
//  EventsApp
//
//  Created by Vuslat Yolcu on 10.04.2023.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let window:  UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        
        let eventListCoordinater = EventListCoordinator(navigationController: navigationController)
        childCoordinators.append(eventListCoordinater)
        eventListCoordinater.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
}
