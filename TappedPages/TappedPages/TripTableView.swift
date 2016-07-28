//
//  TripTableView.swift
//  TappedPages
//
//  Created by Balázs Víg on 28/07/16.
//  Copyright © 2016 Vig Balázs. All rights reserved.
//

import Foundation
import UIKit
import Darwin

var rand = arc4random_uniform(200)



class TripTableView : UITableViewController {
    var names = [String]()
    var  texts = [String]()
    var simpleLabel = UILabel()
    var distance = String()
    var elevation = String()
    var rndString = String(rand)
    
    override func viewDidLoad() {
        names = ["Bükki nemzeti park","Felsőtárkány-Szlvásvárad","Háromkő-Olaszkapu","Felsőtárkány-Tar kő","Szilvásvárad-Istállós kő","Olaszkapu-Katonasírok"]
        distance = "Táv: "+rndString+" Km"
        elevation = "Szintkülönbség: "+rndString+" Km"
        texts = ["Aki már járt Toscanaban szinte kivétel nélkül kellemes emlékekről számol be, aki még nem, a számtalan gyönyörű kép és élménybeszámoló alapján vágyik oda. A mi 8 fős csapatunk május közepén, kerékpáron járta be ezt a vidéket. Tapasztalatunk alapján bátorítunk mindenkit aki teheti, ne hagyja ki ezt a lehetőséget. Többen voltunk már ott nyáron is, de egyetértünk abban, hogy ez az időszak a legalkalmasabb a terület kerékpáros, de akár más eszközzel való megközelítésére is. Egyrészt mindenhol szezon előtti a forgalom, így sehol sem kell tülekednünk, ha kényelmesen meg szeretnénk nézni valamit, másrészt a zöldellő és virágos táj a nyárinál is előnyösebb arcát mutatja. A 2 kerék a gépjárművekhez képest sokkal testközelibbé hozza az élményt, ráérünk rácsodálkozni az apróbb részletekre, és szívhatjuk az erdő-mező illatát. Nyilván ezért a plusz élményért meg kell dolgoznunk, ami Toscanaban különösen igaz, mivel a táj dimbes-dombos, a lakott területek általában a dombtetőkön vannak, így szinte állandó a hullámvasutazás. A tengerpartot kivéve szinte minden nap túlléptük az 1500m szintet. Bár nem volt strandszezon, azért a tengerben is sikerült megfürödnünk.Útvonalunkat nem írom le részleteiben, a track-en megtekinthető, mindenki úgy is a saját elképzelése és kedve szerint variálhatja.Az alsóbb rendű utakon kicsi a forgalom, jól lehet kerékpározni.Mi mountainbike-kal mentünk, így sóderes és földutakkal is sikerült változatosabbá tenni a túrát, ami alapból sem volt egysíkú.Voltak benne gyönyörű kisebb-nagyobb középkori hangulatú városok, tengeri panoráma, virágzó rétek, síközpont, szabadtéri termálfürdő, és ne feledkezzünk el a kulináris élményekről sem.Esténként a szállások környékén a helyi ételek széles skáláját kipróbáltuk, és kizárólag pozitív élményeink voltak.A helyi borokban sem csalódtunk.","","","","",""]
        
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
        let DestViewController : TripView = segue.destinationViewController as! TripView
        DestViewController.TripLabelText = texts[(tableView.indexPathForSelectedRow?.item)!]
        DestViewController.TripTitleText = names[(tableView.indexPathForSelectedRow?.item)!]
        DestViewController.TripDistanceText = distance
        DestViewController.TripElevationText = elevation
    }

}