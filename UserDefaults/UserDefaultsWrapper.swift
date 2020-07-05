//
//  UserDefaultsWrapper.swift
//  UserDefaults
//
//  Created by Jeongbae Kong on 2020/07/05.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import Foundation

protocol KeyProtocol: RawRepresentable, CaseIterable {}

class UserDefaultsWrapper<Keys: KeyProtocol> where Keys.RawValue == String {
  func float(_ key: Keys) -> Float? {
    return UserDefaults.standard.float(forKey: key.rawValue)
  }
  
  func string(_ key: Keys) -> String? {
    return UserDefaults.standard.string(forKey: key.rawValue)
  }
  
  func bool(_ key: Keys) -> Bool {
    return UserDefaults.standard.bool(forKey: key.rawValue)
  }
  
  func double(_ key: Keys) -> Double? {
    return UserDefaults.standard.double(forKey: key.rawValue)
  }
  
  func integer(_ key: Keys) -> Int {
    return UserDefaults.standard.integer(forKey: key.rawValue)
  }
  
  func object(_ key: Keys) -> Any? {
    return UserDefaults.standard.object(forKey: key.rawValue)
  }
  
  func remove(_ key: Keys) {
    return UserDefaults.standard.removeObject(forKey: key.rawValue)
  }
}

extension UserDefaultsWrapper {
  @discardableResult
  func set(_ url: URL?, _ key: Keys) -> Self {
    UserDefaults.standard.set(url, forKey: key.rawValue)
    return self
  }
  
  @discardableResult
  func set(_ value: Any?, _ key: Keys) -> Self {
    UserDefaults.standard.set(value, forKey: key.rawValue)
    return self
  }
  
  @discardableResult
  func set(_ value: Bool?, _ key: Keys) -> Self {
    UserDefaults.standard.set(value, forKey: key.rawValue)
    return self
  }
  
  @discardableResult
  func set(_ value: Double?, _ key: Keys) -> Self {
    UserDefaults.standard.set(value, forKey: key.rawValue)
    return self
  }
  
  @discardableResult
  func set(_ value: String?, _ key: Keys) -> Self {
    UserDefaults.standard.set(value, forKey: key.rawValue)
    return self
  }
  
  @discardableResult
  func set(_ value: Int?, _ key: Keys) -> Self {
    UserDefaults.standard.set(value, forKey: key.rawValue)
    return self
  }
  
  @discardableResult
  func set(_ value: Float?, _ key: Keys) -> Self {
    UserDefaults.standard.set(value, forKey: key.rawValue)
    return self
  }
}
