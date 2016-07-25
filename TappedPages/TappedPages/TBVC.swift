//
//  TBVC.swift
//  TappedPages
//
//  Created by Vig Balázs on 7/20/16.
//  Copyright © 2016 Vig Balázs. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    var names = [String]()
    var identities = [String]()
    var  texts = [String]()
    var simpleLabel = UILabel()
    
    override func viewDidLoad() {
        names = ["Első Hír","Második Hír","Harmadik hír","Negyedik hír"]
        identities = ["1"]
        texts = ["Első szöveg aminek a textboxba kell kerülni","masodik szöveg aminek a textboxba kell kerülni","harmadik szöveg aminek a textboxba kell kerülni","semmi"]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        cell?.textLabel!.text = names[indexPath.row]
        
        return cell!
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //let vcName = identities[indexPath.row]
        simpleLabel.text = texts[indexPath.row]
        simpleLabel.sizeToFit()
        
        let viewController = storyboard?.instantiateViewControllerWithIdentifier("1")
            self.navigationController?.pushViewController(viewController!, animated: true)
        
        viewController!.view.addSubview(simpleLabel)

    }
    
}
