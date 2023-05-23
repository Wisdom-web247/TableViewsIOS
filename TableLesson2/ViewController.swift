//
//  ViewController.swift
//  TableLesson2
//
//  Created by DA MAC M1 138 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var namesList = ["Sizwe", "Victor", "Sibalukhulu", "Rolva", "Monono", "Karabo", "Ntokozo",
                     "Melissa", "Muzi", "Lesego", "Mandla", "Jessica", "Zizwe", "Musawenkosi", "Sanele", "Asanele","Busi", "Thandeka", "Mahlangu", "Ndevu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //For it to display
        tableView.dataSource = self
    }


}

extension ViewController : UITableViewDataSource{
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        //First we were returning 10 then changed to return the number of items in the array
        
        return namesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //first were returning the the text below then changed to return the items in the array
        //cell.textLabel?.text = "I love programming"
        
        cell.textLabel?.text = namesList[indexPath.row]
        return cell
    }
    
 
        
    
    
    
    
}

