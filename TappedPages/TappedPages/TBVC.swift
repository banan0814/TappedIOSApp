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
    var  texts = [String]()
    var simpleLabel = UILabel()
    
    override func viewDidLoad() {
        names = ["Első Hír","Második Hír","Harmadik hír","Negyedik hír"]
        texts = ["Első hír helye mely egy nagyon husszú hírnek ígyérkezik így akár az is lehet hogy több soros lesz de ezt senkisem tudhatja sadsagdhsadhbsahgdf ghsafdhasfdash dghsadjfsa sdashdbsyd asdhsa dasdas dsahdbas dsahdas das dgas","Második hír helye","Harmadik hír helye",""]

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
    
      //  let viewController = storyboard?.instantiateViewControllerWithIdentifier("MessageView")
    
      //  self.navigationController?.pushViewController(viewController!, animated: true)
    
    
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : MessageView = segue.destinationViewController as! MessageView
        DestViewController.messageLabelText = texts[(tableView.indexPathForSelectedRow?.item)!]
    }
}
