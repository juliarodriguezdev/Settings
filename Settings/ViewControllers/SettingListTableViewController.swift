//
//  SettingListTableViewController.swift
//  Settings
//
//  Created by julia rodriguez on 6/17/19.
//  Copyright © 2019 julia rodriguez. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.sharedInstance.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        cell.updateViews(with: setting)
        // Configure the cell...
        cell.cellDelegate = self
        return cell
    }

} // End of class

extension SettingListTableViewController: SettingCellDelegate {
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        // Find the index path of the cell
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        // using that index path - find the setting
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        // toggle the isOn for that setting
        SettingController.sharedInstance.toggleIsOn(for: setting)
        // update the cells views
        cell.updateViews(with: setting)
    }
}
