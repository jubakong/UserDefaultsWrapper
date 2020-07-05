//
//  RemoveViewController.swift
//  UserDefaults
//
//  Created by Jeongbae Kong on 2020/07/05.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import UIKit



class RemoveViewController: UIViewController {
  @IBOutlet weak var removeNameLabel: UILabel!
  @IBOutlet weak var removeOccupationLabel: UILabel!
  @IBOutlet weak var removeHobbyLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setModel()
  }
  
  private func setModel() {
    
    if let name = JBDB.shared.user.string(.name) {
      removeNameLabel.text = name
    } else {
      removeNameLabel.text = "Name has been removed from local DB"
    }
    
    if let occupation = JBDB.shared.user.string(.occupation) {
      removeOccupationLabel.text = occupation
    } else {
      removeOccupationLabel.text = "occupation has been removed from local DB"
    }
    
    if let hobby = JBDB.shared.user.string(.hobby) {
      removeHobbyLabel.text = hobby
    } else {
      removeHobbyLabel.text = "hobby has been removed from local DB"
    }
  }
}
