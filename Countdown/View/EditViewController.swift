//
//  EditViewController.swift
//  Countdown
//
//  Created by Maiko Ohkawa on 2014/08/16.
//  Copyright (c) 2014 Maiko Ohkawa. All rights reserved.
//

import Foundation
import UIKit

protocol EditViewControllerDelegate : NSObjectProtocol {
    func didCompeteEvente(vc: UIViewController, event: Event)
}

let kSections = [kMainSection, kOptionalSection]
let kMainSection = ["TitleCell", "DateCell", "DatePickerCell"]
let kOptionalSection = ["UrlCell"]

class EditViewController: BasicTableViewController, UITextFieldDelegate {
    

    var isShownDatePicker = false
    var event = Event()

    // MARK: - View Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.registerWithNames(kMainSection)
        self.registerWithNames(kOptionalSection)
        
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
//        return kSections.count
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        var count = 0
        switch (section) {
            case 0:
                count = self.isShownDatePicker ? kMainSection.count : kMainSection.count - 1
            case 1:
                count = kOptionalSection.count
            default:
                break
        }
        return count
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        switch indexPath.section {
            // Section 0 Start //////////////////////////
        case 0:
            switch indexPath.row {
            case 0:
                break
            case 1:
                self.isShownDatePicker ? self.hideDatePicker() : self.showDatePicker()
            default:
                break
            }
            // Section 0 End //////////////////////////
            // Section 1 Start //////////////////////////
        case 1:
            break
            // Section 1 End //////////////////////////
        default:
            break
        }
    }
    
    // MARK: - UITableViewDelegate
     override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var identifier = cellIdentifierFromIndex(indexPath)
        var cell: UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier(identifier) as UITableViewCell
        return cell
    }
    override func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 44
    }
    
    // MARK: - UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        return true
    }

    // MARK: - Private
    func cellIdentifierFromIndex(indexPath: NSIndexPath!) -> String {
        var cellIdentifier = ""
        switch(indexPath.section) {
        case 0:
            cellIdentifier = kMainSection[indexPath.row];
        case 1:
            cellIdentifier = kOptionalSection[indexPath.row];
        default:
            break // do nothing
        }
        return cellIdentifier
    }

    func isSelectedDate() -> Bool {
        var ret = false
        var selectedCell = self.tableView.indexPathForSelectedRow()
        if var indexPath = selectedCell {
            if selectedCell.section == 0 && selectedCell.row == 1 {
                ret = true
            }
        }
        return ret
    }
    
    func showDatePicker() {
        self.isShownDatePicker = true
        self.tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 2, inSection: 0)], withRowAnimation: UITableViewRowAnimation.Fade)
    }
    
    func hideDatePicker() {
        self.isShownDatePicker = false
        self.tableView.deleteRowsAtIndexPaths([NSIndexPath(forRow: 2, inSection: 0)], withRowAnimation: UITableViewRowAnimation.Fade)
    }
    
    // MARK: - Actions
    @IBAction func didCancel(sender: AnyObject) {
        self .dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func didDone(sender: AnyObject) {
        
    }
}
