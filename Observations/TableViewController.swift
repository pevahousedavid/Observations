//
//  TableViewController.swift
//  Observations
//
//  Created by David Pevahouse on 3/20/18.
//  Copyright © 2018 David Pevahouse. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var imageLabel: UILabel!
    
    struct Observations {
        var title: String
        var description: String
        var classification: String
       
    }
    
    var observations: [Observations] = [
    Observations(title: "amphibian", description: "Slimy reptile", classification: "animal"),
    Observations(title: "Reptile", description: "Dry amphibian", classification: "animal"),
    Observations(title: "mammal", description: "Furry reptile", classification: "animal"),
    Observations(title: "bird", description: "Flying reptile", classification: "animal"),
    Observations(title: "fish", description: "Swimming reptile", classification: "animal"),
    Observations(title: "Plant", description: "unmoving reptile", classification: "vegetation"),
    Observations(title: "insect", description: "annoying reptile", classification: "bug")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return observations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        let observations = self.observations[indexPath.row]
        cell.titleLabel.text = observations.title
        cell.descriptionLabel.text = observations.description
        cell.classificationLabel.text = observations.classification
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
