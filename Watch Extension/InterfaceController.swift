//
//  InterfaceController.swift
//  watch Extension
//
//  Created by Wassam Zahreddine on 2019-04-07.
//  Copyright © 2019 Wassam Zahreddine. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBAction func buttonPressed() {
        print("button pressed")
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
