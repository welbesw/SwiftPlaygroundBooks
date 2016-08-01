//
//  PagesViewController.swift
//  SwiftPlaygroundBooks
//
//  Created by William Welbes on 7/30/16.
//  Copyright © 2016 William Welbes. All rights reserved.
//

import UIKit

class PagesViewController: UITableViewController {

    let pageClassNames:[String] = [NSStringFromClass(PageOneLiveView.self)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return pageClassNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pageCell", for: indexPath)

        // Configure the cell...
        let pageClassName = pageClassNames[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = pageClassName

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pageClassName = pageClassNames[(indexPath as NSIndexPath).row]
        
        let viewControllerType = NSClassFromString(pageClassName) as! UIViewController.Type
        
        let viewController = viewControllerType.init(nibName:nil, bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
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
