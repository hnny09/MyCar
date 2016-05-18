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
        let normalAttrs = [NSFontAttributeName : UIFont.systemFontOfSize(12),NSForegroundColorAttributeName :MCSkinNomalColor]
        let selectedAttrs = [NSFontAttributeName : normalAttrs[NSFontAttributeName]!,NSForegroundColorAttributeName :MCSkinHeightColor]
        let appearance :UITabBarItem = UITabBarItem.appearance()
        appearance.setTitleTextAttributes(normalAttrs, forState: .Normal)
        appearance.setTitleTextAttributes(selectedAttrs, forState: .Selected)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let  childNavControllerArray = self.childViewControllers
//        for let childNavController :UINavigationController in childNavControllerArray {
//            
//        }
//        
    }

    func setUpChildViewController(viewController:UIViewController,title:String,image:UIImage,selectedImage:UIImage) {
        viewController.title = title
        viewController.tabBarItem.image = image
        viewController.tabBarItem.selectedImage = selectedImage
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
