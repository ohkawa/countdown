//
//  EventListViewController.swift
//  Countdown
//
//  Created by Maiko Ohkawa on 2014/08/18.
//  Copyright (c) 2014 Maiko Ohkawa. All rights reserved.
//

import Foundation
import UIKit

class EventListViewController: BasicTableViewController {
    var events = []

    func refreshEvents() {
        
        var ud = NSUserDefaults(suiteName: kAppGroupId)
        ud.setObject("TEST", forKey: "TEST")

    }
    

}