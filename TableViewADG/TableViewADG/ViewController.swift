//
//  ViewController.swift
//  TableViewADG
//
//  Created by Ayush Agarwal on 27/08/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var arr = ["Screen Time","General","Accessibility","Passwords","Safari","News","Translate","Maps","Shortcuts","Health","Siri","Photos","Game Center"]
    var img = ["pic1","pic2","pic3","pic4","pic5","pic6","pic7","pic8","pic9","pic10","pic11","pic12","pic13"]
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
        myTable.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "cellCustom")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arr[indexPath.row])
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return img.count //to return number of elements in the array
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cellCustom", for: indexPath) as! CustomCell
        //cell.textLabel?.text = img[indexPath.row]
        cell.CustomImageView.image = UIImage(named: img[indexPath.row])
        cell.CustomTextView.text = arr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Settings"
    }

}

