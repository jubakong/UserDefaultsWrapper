//
//  SecondViewController.swift
//  UserDefaults
//
//  Created by Jeongbae Kong on 2020/07/05.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var occupationLabel: UILabel!
  @IBOutlet weak var hobbyLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setModel()
  }
  
  private func setModel() {
    nameLabel.text = JBDB.shared.user.string(.name)
    occupationLabel.text = JBDB.shared.user.string(.occupation)
    hobbyLabel.text = JBDB.shared.user.string(.hobby)
    
    JBDB.shared.user.remove(.name)
    JBDB.shared.user.remove(.occupation)
    JBDB.shared.user.remove(.hobby)
  }
}
