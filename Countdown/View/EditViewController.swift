//
//  EditViewController.swift
//  Countdown
//
//  Created by Maiko Ohkawa on 2014/08/16.
//  Copyright (c) 2014 Maiko Ohkawa. All rights reserved.
//

import Foundation
import UIKit

class EditViewController: UITableViewController {
    

    @IBAction func didCancel(sender: AnyObject) {
        self .dismissViewControllerAnimated(true, completion: nil)
    }
}
