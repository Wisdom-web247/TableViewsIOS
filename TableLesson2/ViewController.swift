//
//  ViewController.swift
//  TableLesson2
//
//  Created by DA MAC M1 138 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var cars = ["Bmw", "Toyota", "Ford", "Audi", "Isuzu", "McLaren"]
    
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
        
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //first were returning the the text below then changed to return the items in the array
        //cell.textLabel?.text = "I love programming"
        
        cell.textLabel?.text = cars[indexPath.row]
        return cell
    }
    
 
        
    
    
    
    
}

