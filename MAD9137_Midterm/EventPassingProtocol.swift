//
//  EventPassingProtocol.swift
//  MAD9137_Midterm
//
//  Created by Ravi Rachamalla on 2020-10-20.
//  Copyright © 2020 rav. All rights reserved.
//

import Foundation

// define a protocol that will pass back the event object from the add new event view
// this event will eventually be added to the eventArray of our schedule object
protocol EventPassingDelegate {
    func passEventBack(newEvent: Event)
}
