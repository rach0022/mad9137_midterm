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
    @IBOutlet weak var eventDescriptionTextView: UITextView!
    @IBOutlet weak var eventDatePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //button action for the create new event
    @IBAction func createNewEventButton(_ sender: Any) {
        //first lets dismiss the keyboard input from the textView and textField
        eventNameTextField.resignFirstResponder()
        eventDescriptionTextView.resignFirstResponder()
        
        // lets check if the eventname and description are empty if they arent lets make this button run the rest
        // since these values are optional lets check if they arent null first
        if let name = eventNameTextField.text, let description = eventDescriptionTextView.text {
            if !name.isEmpty && !description.isEmpty {
                //create a new event
                let newEvent = Event(title: name, description: description, date: eventDatePicker.date)
                
                //now check if the delegate is not null and then pass the event back
                if let eventDelegate = self.delegate {
                    eventDelegate.passEventBack(newEvent: newEvent)
                    
                    //lets dismiss this view with an animation and no completion function to fire
                    print("fired in newEventInfo create new event button", newEvent.getInfo(), eventDelegate)
                    self.dismiss(animated: true, completion: nil)
                }
                
            }
        }
    }
    
    //lets override the toucheBegan function of the view to end editing of any view
    // so when the user clicks on the background the keyboard will go away
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
