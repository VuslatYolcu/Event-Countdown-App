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
        let addEventViewController: AddEventViewController = .instantiate()
        let addEventViewModel = AddEventViewModel()
        addEventViewController.viewModel = addEventViewModel
        navigationController.present(addEventViewController, animated: true, completion: nil)
    }
    
    
}
