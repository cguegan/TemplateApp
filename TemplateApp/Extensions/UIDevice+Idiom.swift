//
//  UIDevice+Idiom.swift
//  TemplateApp
//
//  Created by Christophe Guégan on 25/06/2024.
//

import SwiftUI

extension UIDevice {
  static var idiom: UIUserInterfaceIdiom {
    UIDevice.current.userInterfaceIdiom
  }
}

extension UIDevice {
static var isIpad: Bool {
    idiom == .pad
  }
  
  static var isiPhone: Bool {
    idiom == .phone
  }
}
