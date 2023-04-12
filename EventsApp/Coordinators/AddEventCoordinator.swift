//
//  AddEventCoordinator.swift
//  EventsApp
//
//  Created by Vuslat Yolcu on 12.04.2023.
//

import Foundation
import UIKit

class AddEventCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .systemBlue
        navigationController.present(viewController, animated: true, completion: nil)
        // create add event view controller
        // create add event view model
        // present modally controller
    }
    
    
}
