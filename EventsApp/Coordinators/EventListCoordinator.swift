//
//  EventListCoordinator.swift
//  EventsApp
//
//  Created by Vuslat Yolcu on 10.04.2023.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListViewController = EventListViewController.instantiate()
        navigationController.setViewControllers([eventListViewController], animated: false)
    }
    
    
}