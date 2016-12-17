//
//  FirstVC
//  NSNotification Test
//
//  Created by Bob Lee on 12/17/16.
//  Copyright © 2016 BobtheDeveloper. All rights reserved.
//

import UIKit
class FirstVC: UIViewController {

  @IBOutlet weak var FirstVCLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
       NotificationCenter.default.addObserver(forName:NSNotification.Name(rawValue: myNotificationKey), object:nil, queue:nil, using:catchNotification)
  }

  func doSomethingAfterNotified() {
    print("I've been notified")
    FirstVCLabel.text = "Damn, I feel your spark 😱"
    
  }
  
  func catchNotification(notification:Notification) -> Void {
    guard let name = notification.userInfo!["name"] else {
      return
    }
    FirstVCLabel.text = "My name, \(name) has been passed! 😄"
  }
}
