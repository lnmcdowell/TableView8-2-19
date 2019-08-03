//
//  CustomCell.swift
//  TableView8-2-19
//
//  Created by Larry Mcdowell on 8/2/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    var cellData: CellData! {
        didSet {
            titleText.text = cellData.title
            bodyText.text = ""
            var localText = ""
            for i in 0..<cellData.data.count{
                localText += cellData.data[i] + " "
            }
            bodyText.text = localText
            //cellData.data.forEach{(snip) in bodyText.text += snip}
            featuredImage.image = cellData.image
            contentFoot.text = cellData.footer
        }
    }
    
    
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       
    super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    contentView.backgroundColor = .white
        backgroundColor = .clear
        
    contentView.addSubview(featuredImage)
        contentView.addSubview(titleText)
        contentView.addSubview(bodyText)
        contentView.addSubview(contentFoot)
        contentView.addSubview(myButton)
//        featuredImage.heightAnchor.constraint(equalToConstant: 105).isActive = true
//
//        featuredImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
//        featuredImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
//        featuredImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        
    featuredImage.anchor(top: contentView.topAnchor, left: contentView.leadingAnchor, bottom: nil, right:nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 5, width: 200, height: 105, enableInsets: false)
        
        
                myButton.anchor(top: contentView.topAnchor, left: featuredImage.trailingAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 10, width: 30, height: 0, enableInsets: false)
        titleText.anchor(top: contentView.topAnchor, left: myButton.trailingAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 180, height: 42, enableInsets: false)
        
        bodyText.anchor(top: titleText.bottomAnchor, left: featuredImage.trailingAnchor, bottom: nil, right: contentView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
        
 
        
        contentFoot.anchor(top: featuredImage.bottomAnchor, left: contentView.leadingAnchor, bottom: nil, right: contentView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)

       
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var featuredImage:UIImageView = {
        let imgView = UIImageView()
       
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFill
        imgView.layer.masksToBounds = true
        return imgView
        
    }()
    
    var titleText:UILabel = {
        let txtView = UILabel()
        txtView.font = UIFont(name: "Copperplate", size: 36)
        txtView.textColor = .blue
        
        return txtView
    }()
    
    var bodyText:UILabel = {
        let txtView = UILabel()
        txtView.font = UIFont(name: "GillSans", size: 16)
        txtView.textColor = .purple
        txtView.numberOfLines = 0 //enables word wrapping
        return txtView
    }()
    
    var contentFoot:UILabel = {
        let cnt = UILabel()
        cnt.font = UIFont(name: "GillSans", size: 20)
        cnt.textColor = .black
        cnt.numberOfLines = 0
        return cnt
    }()
    var myButton:UIButton = {
        let but = UIButton()
       // but.titleLabel?.text = "+"
       // but.titleLabel?.backgroundColor = .clear
        but.setTitle("+", for: .normal)
        but.backgroundColor = .gray
        //but.titleLabel?.textColor = .black
       return but
    }()
}
