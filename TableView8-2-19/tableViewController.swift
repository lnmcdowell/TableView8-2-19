//
//  ViewController.swift
//  TableView8-2-19
//
//  Created by Larry Mcdowell on 8/2/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import UIKit

protocol ProductCellDelegate {
    func increaseCount(cellIndex: Int, number :Int)
    
}

class tableViewController: UITableViewController, ProductCellDelegate {
    func increaseCount(cellIndex: Int, number: Int) {
        print("working")
        infoData[cellIndex].taps = number
        print("row number \(cellIndex) updated to \(number)")
    }
    
    
    
    fileprivate let CELL_ID = "CELL_ID"
    var infoData : [CellData] = [CellData]()
    
    func setupData(){
        
        infoData.append(CellData(data:["Twitter is for messaging.","YouTube is for videos.", "Safari is for browsing."],title:"Web",image:UIImage(named: "image0_swift.jpg")!,footer:"Easy to surf here",count:nil))
        infoData.append(CellData(data:["Walmart is cheapest.","Target is better quality.","Dollar Tree is is good for giveaways.","Sam's is bulk."],title:"Stores",image:UIImage(named:"image1_swift.jpg")!,footer:"Easy to shop at these stores (except on Holidays)",count:nil))
        infoData.append(CellData(data: ["Bi-Lo is oldest.","Publix is next.","EarthFare is pro-organic.","Ingles is traditional."], title: "Grocers",image:UIImage(named: "image2_swift.jpg")!,footer:"A joy to shop local or organic when possible",count:nil))
         infoData.append(CellData(data:["Walmart is cheapest.","Target is better quality.","Dollar Tree is is good for giveaways.","Sam's is bulk."],title:"Stores",image:UIImage(named:"image3_swift.jpg")!,footer:"Easy to shop at these stores (except on Holidays)",count:nil))
        infoData.append(CellData(data:["Twitter is for messaging.","YouTube is for videos.", "Safari is for browsing."],title:"Web",image:UIImage(named: "image0_swift.jpg")!,footer:"Easy to surf here",count:nil))
        infoData.append(CellData(data:["Walmart is cheapest.","Target is better quality.","Dollar Tree is is good for giveaways.","Sam's is bulk."],title:"Stores",image:UIImage(named:"image1_swift.jpg")!,footer:"Easy to shop at these stores (except on Holidays)",count:nil))
        infoData.append(CellData(data: ["Bi-Lo is oldest.","Publix is next.","EarthFare is pro-organic.","Ingles is traditional."], title: "Grocers",image:UIImage(named: "image2_swift.jpg")!,footer:"A joy to shop local or organic when possible",count:nil))
        infoData.append(CellData(data:["Walmart is cheapest.","Target is better quality.","Dollar Tree is is good for giveaways.","Sam's is bulk."],title:"Stores",image:UIImage(named:"image1_swift.jpg")!,footer:"Easy to shop at these stores (except on Holidays)",count:nil))
        infoData.append(CellData(data:["Twitter is for messaging.","YouTube is for videos.", "Safari is for browsing."],title:"Web",image:UIImage(named: "image3_swift.jpg")!,footer:"Easy to surf here",count:nil))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        tableView.register(CustomCell.self, forCellReuseIdentifier: CELL_ID)
        tableView.allowsSelection = false
        navigationItem.title = "Economics"
        
       // tableView.separatorStyle = .none
        setupData()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("\(section) rows")
        return infoData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath) as! CustomCell
        let row = indexPath.row
        cell.cellData = infoData[row]
        cell.delegate = self
        cell.btnTag = row
       
        return cell
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let head = UILabel()
        head.text = "First Section"
        head.font = .boldSystemFont(ofSize: 30)
        head.textColor = .red
        head.backgroundColor = .white
        return head
    }
}

