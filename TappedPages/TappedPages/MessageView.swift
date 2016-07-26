//
//  MessageView.swift
//  TappedPages
//
//  Created by Vig Balázs on 7/26/16.
//  Copyright © 2016 Vig Balázs. All rights reserved.
//

import Foundation
import UIKit

class MessageView : UIViewController {
    
    
    
    @IBOutlet var messageLabel: UILabel!
    var messageLabelText = String()
    
    
    override func viewDidLoad()
    {
            messageLabel.text = messageLabelText
        messageLabel.numberOfLines=0
        messageLabel.sizeToFit()
        
    }
 
    
    
}