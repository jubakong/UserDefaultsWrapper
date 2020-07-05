//
//  JBDB.swift
//  UserDefaults
//
//  Created by Jeongbae Kong on 2020/07/05.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import Foundation

class JBDB {
  static let shared = JBDB()
  
  
  enum JBKeys: String, KeyProtocol {
    case name
    case occupation
    case hobby
  }
  
  enum AppKey: String, KeyProtocol {
    case uuid
  }
  
  let user = UserDefaultsWrapper<JBKeys>()
  let app = UserDefaultsWrapper<AppKey>()
}

extension JBDB {
  @discardableResult
  func setInfo(_ user: User?) -> UserDefaultsWrapper<JBKeys> {
    self.user
      .set(user?.name, .name)
      .set(user?.occupation, .occupation)
      .set(user?.hobby, .hobby)
  }
}

