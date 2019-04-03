//
//  SettingsViewController.swift
//  Imp
//
//  Created by Alexander on 9/17/17.
//  Copyright © 2017 Alexander Shalamov. All rights reserved.
//

import Cocoa

class SettingsViewController: NSViewController {
    
    let settings = UserDefaults.init(suiteName: Constants.settings.suiteId)!
    
    @IBOutlet weak var ownHeaderCheckbox: NSButton!
    @IBOutlet weak var separatedFrameworksCheckbox: NSButton!
    @IBOutlet weak var removeDuplicatesCheckbox: NSButton!
    @IBOutlet weak var topPrefixTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let putsOwnHeaderOnTop = !self.settings.bool(forKey: Constants.settings.ignoreOwnHeader)
        self.ownHeaderCheckbox.state = putsOwnHeaderOnTop ? NSControl.StateValue.on : NSControl.StateValue.off
        
        let separatesFrameworks = !self.settings.bool(forKey: Constants.settings.ignoreFrameworks)
        self.separatedFrameworksCheckbox.state = separatesFrameworks ? NSControl.StateValue.on : NSControl.StateValue.off
        
        let removesDuplicates = !self.settings.bool(forKey: Constants.settings.ignoreDuplicates)
        self.removeDuplicatesCheckbox.state = removesDuplicates ? NSControl.StateValue.on : NSControl.StateValue.off
        
        let topPrefix = self.settings.string(forKey: Constants.settings.topPrefix)
        self.topPrefixTextField.stringValue = topPrefix ?? ""
    }
    
    @IBAction func checkboxClicked(_ sender: NSButton) {
        if sender == self.ownHeaderCheckbox {
            let shouldIgnoreOwnHeader = sender.state == NSControl.StateValue.on ? false : true
            self.settings.set(shouldIgnoreOwnHeader, forKey: Constants.settings.ignoreOwnHeader)
        }
        if sender == self.separatedFrameworksCheckbox {
            let shouldIgnoreFrameworks = sender.state == NSControl.StateValue.on ? false : true
            self.settings.set(shouldIgnoreFrameworks, forKey: Constants.settings.ignoreFrameworks)
        }
        if sender == self.removeDuplicatesCheckbox {
            let shouldIgnoreDuplicates = sender.state == NSControl.StateValue.on ? false : true
            self.settings.set(shouldIgnoreDuplicates, forKey: Constants.settings.ignoreDuplicates)
        }
        self.settings.synchronize()
    }
    
    @IBAction func textChanged(_ sender: NSTextField) {
        self.settings.set(sender.stringValue, forKey: Constants.settings.topPrefix)
    }
}
