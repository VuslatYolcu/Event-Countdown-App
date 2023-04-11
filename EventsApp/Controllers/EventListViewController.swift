//
//  EventListViewController.swift
//  EventsApp
//
//  Created by Vuslat Yolcu on 10.04.2023.
//

import UIKit
import UIKit

class EventListViewController: UIViewController {

    let coreDataManager = CoreDataManager()
    
    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "EventListViewController") as! EventListViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
        coreDataManager.saveEvent(name: "New Years", date: Date(), image: UIImage(named: "newyear")!)
        print(coreDataManager.fethcEvent())
    }
    
    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedRightBarButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "Events"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedRightBarButton() {
        print("tapped right bar button")
    }

}
