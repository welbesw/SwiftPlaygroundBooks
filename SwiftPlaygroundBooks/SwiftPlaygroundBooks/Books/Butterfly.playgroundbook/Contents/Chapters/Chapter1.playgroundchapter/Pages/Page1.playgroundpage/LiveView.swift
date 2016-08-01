//
//  LiveView.swift
//  SwiftPlaygroundBooks
//
//  Created by William Welbes on 7/30/16.
//  Copyright © 2016 William Welbes. All rights reserved.
//

import UIKit

class PageOneLiveView: UIViewController {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white()

        // Do any additional setup after loading the view.
        helloPlayground()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func helloPlayground() {
        let view = UIView(frame: CGRect(x: 100.0, y: 100.0, width: 100.0, height: 100.0))
        view.backgroundColor = UIColor.red()
        
        self.view.addSubview(view)
    }

}
