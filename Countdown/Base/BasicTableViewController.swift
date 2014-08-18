//
//  BasicTableViewController.swift
//  Countdown
//
//  Created by Maiko Ohkawa on 2014/08/17.
//  Copyright (c) 2014年 Maiko Ohkawa. All rights reserved.
//

import Foundation
import UIKit

class BasicTableViewController: UITableViewController {
    
    // MARK: -
    func registerNibWithName(nibName: String) {
        var nib = UINib(nibName: nibName, bundle:nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: nibName)
    }
    
    func registerWithNames(names: Array<String>) {
        for name in names {
            self.registerNibWithName(name)
        }    }

}
