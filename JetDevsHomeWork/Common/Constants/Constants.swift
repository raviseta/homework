//
//  Constants.swift
//  JetDevsHomeWork
//
//  Created by Gary.yao on 2021/10/29.
//

import UIKit

let screenFrame: CGRect = UIScreen.main.bounds
let screenWidth = screenFrame.size.width
let screenHeight = screenFrame.size.height
let isIPhoneX = (screenWidth >= 375.0 && screenHeight >= 812.0) ? true : false
let isIPad = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? true : false

let statusBarHeight: CGFloat = isIPhoneX ? 44.0 : 20.0
let navigationBarHeight: CGFloat = 44.0
let statusBarNavigationBarHeight: CGFloat = isIPhoneX ? 88.0 : 64.0

let tabbarSafeBottomMargin: CGFloat = isIPhoneX ? 34.0 : 0.0
let tabBarHeight: CGFloat = isIPhoneX ? (tabBarTrueHeight+34.0) : tabBarTrueHeight
let tabBarTrueHeight: CGFloat = 49.0

let cornerRadius: CGFloat = 8
let userDefault = UserDefaults.standard
let applicationName = "JetDevsHomeWork"

struct AppFontSize {
    
    static let extraLarge: CGFloat = 21
    static let large: CGFloat = 19
    static let medium: CGFloat = 17
    static let small: CGFloat = 15
    static let extraMall: CGFloat = 13
}

struct AppFont {
    
    static let regular = "Lato-Regular"
    static let bold = "Lato-Bold"
}
