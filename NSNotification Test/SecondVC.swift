//
//  SecondVC
//  NSNotification Test
//
//  Created by Bob Lee on 12/17/16.
//  Copyright © 2016 BobtheDeveloper. All rights reserved.
//

import UIKit

let myNotificationKey = "com.bobthedeveloper.notificationKey"

class SecondVC: UIViewController {

  @IBOutlet weak var secondVCLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      	NotificationCenter.default.addObserver(self, selector: #selector(doThisWhenNotify), name: NSNotification.Name(rawValue: myNotificationKey), object: nil)
      
    }
  @IBAction func tabToNotifyBack(_ sender: UIButton) {
    secondVCLabel.text = "Notification Completed!😜"
    NotificationCenter.default.post(name: NSNotification.Name(rawValue: myNotificationKey), object: nil, userInfo: ["name":"Bob"])
  }
  
  func doThisWhenNotify() {
    print("I've successfully sent a spark!")
  }
}
