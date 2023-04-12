//
//  EventListViewModel.swift
//  EventsApp
//
//  Created by Vuslat Yolcu on 12.04.2023.
//

import Foundation

final class EventListViewModel {
    
    let title = "Events"
    var coordinator: EventListCoordinator?
    
    func tappedAddEvent() {
        coordinator?.startAddEvent()
    }
}
