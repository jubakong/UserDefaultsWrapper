//
//  ViewController.swift
//  UserDefaults
//
//  Created by Jeongbae Kong on 2020/07/05.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    JBDB.shared.user.set("JB", .name)
    JBDB.shared.user.set("iOS Developer", .occupation)
    JBDB.shared.user.set("Working out", .hobby)
  }
}

