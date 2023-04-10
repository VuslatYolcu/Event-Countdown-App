//
//  EventListViewController.swift
//  EventsApp
//
//  Created by Vuslat Yolcu on 10.04.2023.
//

import UIKit

class EventListViewController: UIViewController {

    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "EventListViewController") as! EventListViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
