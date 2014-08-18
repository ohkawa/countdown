//
//  TitleCell.swift
//  Countdown
//
//  Created by Maiko Ohkawa on 2014/08/16.
//  Copyright (c) 2014 Maiko Ohkawa. All rights reserved.
//

import Foundation
import UIKit

class TitleCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!

//    override func sizeThatFits(size: CGSize) -> CGSize {
//        return size
//    }
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        self.selectionStyle = UITableViewCellSelectionStyle.None
    }

    // MARK: - UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        return true
    }


}
