//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by julia rodriguez on 6/17/19.
//  Copyright © 2019 julia rodriguez. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
      //  if settingSwitch.isOn == true {
        //    self.backgroundColor = UIColor.cyan
        //} else {
         //   self.backgroundColor = UIColor.white
        //}
        
        // Terinary operatior ? True, : False
        self.backgroundColor = settingSwitch.isOn ? .cyan : .white
    }
}
