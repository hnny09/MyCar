//
//  MCTabBarController.swift
//  MyCar
//
//  Created by _MyComputer_ on 16/5/17.
//  Copyright © 2016年 _MyComputer_. All rights reserved.
//

import UIKit

class MCTabBarController: UITabBarController {

    override func awakeFromNib() {
        let normalAttrs = [NSFontAttributeName : UIFont.systemFontOfSize(11),NSForegroundColorAttributeName :MCSkinNomalColor]
        let selectedAttrs = [NSFontAttributeName : normalAttrs[NSFontAttributeName]!,NSForegroundColorAttributeName :MCSkinHeightColor]
        let appearance :UITabBarItem = UITabBarItem.appearance()
        appearance.setTitleTextAttributes(normalAttrs, forState: .Normal)
        appearance.setTitleTextAttributes(selectedAttrs, forState: .Selected)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let  childNavControllerArray = self.childViewControllers
        for  childNavController in childNavControllerArray {
            let NavController = childNavController as! UINavigationController
            let viewController = NavController.viewControllers[0]
            let index:Int = self.childViewControllers.indexOf(childNavController)!
            switch index {
            case 0:
                self.setUpChildViewController(viewController, title:MCLocalizedStringForKey("TabBar_Home_Title") , image: MCImageWithString("tabbar_home" ), selectedImage: MCImageWithString("tabbar_homeHL" ))
            case 1:
                self.setUpChildViewController(viewController, title:MCLocalizedStringForKey("TabBar_Form_Title") , image: MCImageWithString("tabbar_form" ), selectedImage: MCImageWithString("tabbar_formHL" ))
            case 2:
                self.setUpChildViewController(viewController, title:MCLocalizedStringForKey("TabBar_Forum_Title") , image: MCImageWithString("tabbar_forum" ), selectedImage: MCImageWithString("tabbar_forumHL" ))
            case 3:
                self.setUpChildViewController(viewController, title:MCLocalizedStringForKey("TabBar_My_Title") , image: MCImageWithString("tabbar_me" ), selectedImage: MCImageWithString("tabbar_meHL" ))
            default: break
           
            }

        }
        
    }

    func setUpChildViewController(viewController:UIViewController,title:String,image:UIImage,selectedImage:UIImage) {
        
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        viewController.tabBarItem.selectedImage = selectedImage.imageWithRenderingMode(.AlwaysOriginal)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
