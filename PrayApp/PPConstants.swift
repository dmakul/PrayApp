//
//  PPConstants.swift
//  PurePro
//
//  Created by Никита Ярмолюк on 6/15/16.
//  Copyright © 2016 Inculerate. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

enum PFDINType {
    case Light
    case Regular
}

struct PPConstants {
    
    static let kAPIImageURL = "http://fs.royal.kz/"
    
    //MARK: - Sizes
    static let screenSize = UIScreen.mainScreen().bounds
    static let screenHeight = UIScreen.mainScreen().bounds.height
    static let screenWidth = UIScreen.mainScreen().bounds.width
    
    //MARK: - Colors
    static let whiteBorderColor = UIColor.whiteColor().colorWithAlphaComponent(0.2).CGColor
    static let blackBorderColor = UIColor.blackColor().colorWithAlphaComponent(0.05).CGColor
    
    static let lightPlaceholderColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
    static let darkPlaceholderColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
    
    static let lightDisabledTextColor = UIColor.whiteColor().colorWithAlphaComponent(0.4)
    static let darkDisabledTextColor = UIColor.blackColor().colorWithAlphaComponent(0.3)
    
    static let imagePlaceholderColor = UIColor.blackColor().colorWithAlphaComponent(0.1)
    
    static let greenButtonColor = UIColor.init(hexString: "26A69A")
    static let blueButtonColor = UIColor.init(hexString: "2385FF")
    static let purpleButtonColor = UIColor.init(hexString: "7457FF")
    static let mintButtonColor = UIColor.init(hexString: "267BA6")
    static let limeButtonColor = UIColor.init(hexString: "B1D541")
    static let yellowButtonColor = UIColor.init(hexString: "F1C13E")
    
    
    static let orangeColor = UIColor.init(hexString: "FFCB3C")
    static let barBlueColor = UIColor.init(hex: "2385FF")
    static let boneBackgroundColor = UIColor.init(hex: "F9F9F9").darkenByPercentage(0.02)
    
    //MARK: - Fonts
    
    static func fontSize() -> CGFloat {
        
        switch UIDevice.deviceType() {
            
        case .iPhone4 :
            return 14
            
        case .iPhone5 :
            return 15
            
        case .iPhone6 :
            return 16
            
        case .iPhone6Plus :
            return 18
            
        default:
            break
            
        }
        
        return 16
    }
    
    static func regulartFont(withFontSize size: CGFloat? = nil) -> UIFont {
        if let value = size {
            return UIFont.systemFontOfSize(value)
        } else {
            return UIFont.systemFontOfSize(fontSize())
        }
    }
    
    static func boldFont(withFontSize size: CGFloat? = nil) -> UIFont {
        if let value = size {
            return UIFont.boldSystemFontOfSize(value)
        } else {
            return UIFont.boldSystemFontOfSize(fontSize())
        }
    }
    
    static func PFDIN(withType type: PFDINType, size: CGFloat? = nil) -> UIFont? {
        if let value = size {
            switch type {
                case .Light:
                    return UIFont(name: "PFDinTextCondPro-Light", size: value)
                case .Regular:
                    return UIFont(name: "PFDinTextCondPro-Regular", size: value)
            }
        } else {
            switch type {
            case .Light:
                return UIFont(name: "PFDinTextCondPro-Light", size: fontSize())
            case .Regular:
                return UIFont(name: "PFDinTextCondPro-Regular", size: fontSize())
            }
        }
    }
    
}