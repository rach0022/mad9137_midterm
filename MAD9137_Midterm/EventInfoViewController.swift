//
//  EventInfoViewController.swift
//  MAD9137_Midterm
//
//  Created by Ravi Rachamalla on 2020-10-20.
//  Copyright © 2020 rav. All rights reserved.
//

import UIKit

class EventInfoViewController: UIViewController {
    //optional event object that will contain the event to be shown
    var selected_event: Event?
    
    //outlets that are connected to show the selected events details
    @IBOutlet weak var eventTitleTextLabel: UILabel!
    @IBOutlet weak var eventDateTextLabel: UILabel!
    @IBOutlet weak var eventDescriptionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
