//
//  ScheduleTableViewController.swift
//  MAD9137_Midterm
//
//  Created by Ravi Rachamalla on 2020-10-20.
//  Copyright © 2020 rav. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController, EventPassingDelegate {
    //properties of the scheduleTableViewController
    // schedule variable is is intialized right away
    let schedule = Schedule()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add an initial (default) event for testing
        schedule.addNewEvent(ev: Event(title: "Default Event", description: "Initial default event for testing", dateString: "2020/10/21 04:36"))

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    // Table View Methods

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return schedule.eventCount
    }
    
    //  function to change what displays in the cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventTableCell", for: indexPath)

        // Configure the cell by customizing what shows based on the event info
        // check if the title and date is set and then show the
        // values in the cells label
        /*******ASK IF I AM ALLOWED TO UNWRAP CELLS LIKE THIS **********/
        let currentEvent = self.schedule.eventArray[indexPath.row]
        if let title = currentEvent.title, let date = currentEvent.date{
            cell.textLabel?.text = "\(indexPath.row + 1) \(title)"
            
            let dateString = DateFormatter.localizedString(from: date, dateStyle: .full, timeStyle: .short)
            cell.detailTextLabel?.text = "\(dateString)"
        }
        

        return cell
    }
    
    // Override to support editing the table view. (as in delete events from the table)
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            self.schedule.eventArray.remove(at: indexPath.row) // first remove the event then the cell to reduce the length
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }

    
    //outlet connectd to the button action of thew new button
    @IBAction func addNewEvent(_ sender: Any) {
        performSegue(withIdentifier: "ShowNewEvent", sender: self)
    }
    
    // delegate function that we override after inheriting
    // we need to set the 'this' (the scheduleTableViewController) will set itself to
    //be the new delegate
    
    func passEventBack(newEvent: Event) {
        //protocol method that passes back the event
        // add the event to the schdule
        self.schedule.addNewEvent(ev: newEvent)
        print(newEvent)
        
        //then reload the data for the table view
        tableView.reloadData()
    }
    
    // the overriden prepare for segue functions
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //first check where the segue is going
        if segue.identifier == "ShowEventInfo" {
            // get a copy to the next view Controller
            let nextViewController = segue.destination as? EventInfoViewController
            
            // safely get a reference to the table view cell and indexPath
            /*******ASK ABOUT THIS THE WORDING IS A LITTLE CONFUSING **********/
            if let indexPath = tableView.indexPathForSelectedRow {
                nextViewController?.selected_event = self.schedule.eventArray[indexPath.row]
                
            }
            
            
        } else if segue.identifier == "ShowNewEvent" {
            print("happens")
            // do the same as above but this time for the new event
            //get a reference to the view controller
            let nextViewController = segue.destination as? NewEventViewController
            
            //set its delagate to us
            /*******ASK ABOUT THIS AM I ALLOWED TO UNWRAP THIS AS SUCH **********/
            nextViewController?.delegate = self
            
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


}
