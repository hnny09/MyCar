//
//  GlocalMeDefine.swift
//  GlocalMe
//
//  Created by _MyComputer_ on 16/5/16.
//  Copyright © 2016年 haitaozhang. All rights reserved.
//

import UIKit

//MARK:字符串

func MCLocalizedStringForKey(key:String) -> String {
    let  value = NSLocalizedString(key, comment: "")
    return value
}

//MARK:RGBA颜色
func MCColorWithRGBA(R:CGFloat,G:CGFloat,B:CGFloat,A:CGFloat) ->UIColor {
    let color = UIColor.init(red: R, green: G, blue: B, alpha: A)
    return color
}

//MARK:十六进制颜色

func MCColorWithHexString (hex:String) -> UIColor {
    var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
    
    if (cString.hasPrefix("#")) {
        cString = (cString as NSString).substringFromIndex(1)
    }
    
    if (cString.characters.count != 6) {
        return UIColor.grayColor()
    }
    
    let rString = (cString as NSString).substringToIndex(2)
    let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
    let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
    
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    NSScanner(string: rString).scanHexInt(&r)
    NSScanner(string: gString).scanHexInt(&g)
    NSScanner(string: bString).scanHexInt(&b)
    
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
}

//MARK:图片

func MCImageWithString(imageName:String) -> UIImage {
    let image = UIImage(named: imageName)
    return image!
}

//MARK:故事板中的视图控制器

func MCViewControllerWithClass(string:AnyClass) -> UIViewController{
    let viewController = UIStoryboard.init(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier(NSStringFromClass(string))
    return viewController
}

func MCStringWithClass(sting:AnyClass) -> String {
    let  returnString = NSStringFromClass(sting)
    let  array = returnString.componentsSeparatedByString(".")
    if array.count > 0 {
        return array[array.count-1]
    } else {
        return array[0]
    }
}

//MARK:常量

let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.height
let SCREEN_WIDTH = UIScreen.mainScreen().bounds.width
let MCSkinNomalColor = UIColor.blackColor()//MCColorWithRGBA(50.0,G: 194.0,B: 124.0,A: 1)
let MCSkinHeightColor = MCColorWithHexString("#0EB400")// MCColorWithRGBA(44.0, G: 168.0, B: 108.0 , A: 1)


#if DEBUG
let BaseURL = "www.baidu.com"
#else
let BaseURL = "www.code4app.com"
#endif


