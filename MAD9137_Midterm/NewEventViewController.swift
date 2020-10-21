//
//  NewEventViewController.swift
//  MAD9137_Midterm
//
//  Created by Ravi Rachamalla on 2020-10-20.
//  Copyright © 2020 rav. All rights reserved.
//

import UIKit

class NewEventViewController: UIViewController {
    //optional event passing delegate that will bind to
    // any successfully created event in this view to pass
    //  it back
    var delegate: EventPassingDelegate?
    
    //outlets that are conencted to the addNewEvent View
    @IBOutlet weak var eventNameTextField: UITextField!
    @IBOutlet var eventDescriptionTextView: UIView!
    @IBOutlet var eventDatePicker: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //button action for the create new event
    @IBAction func createNewEventButton(_ sender: Any) {
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
