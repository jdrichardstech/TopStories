//
//  NYTFeedViewController.swift
//  Profiler
//
//  Created by Devinci on 4/16/16.
//  Copyright © 2016 JDRichardsTech. All rights reserved.
//

import UIKit
import Alamofire



class NYTTitlesViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
 
	// MARK: - My Classes

	var nytTable:UITableView!
	
	var nytArray = Array<NYTModel>()
	var media: NSArray!
	var articleType: String!
	var sectionChoice: String!
	
	
	
	// MARK: - Lifecycles
	
	
	override func loadView() {
		super.loadView()
				self.edgesForExtendedLayout = .None
		let frame = UIScreen.mainScreen().bounds
		let view = UIView(frame: frame)
		view.backgroundColor = UIColor.lightGrayColor()
		

		
		self.nytTable = UITableView(frame: frame)
		self.nytTable.dataSource = self
		self.nytTable.delegate = self
		self.nytTable.separatorColor = UIColor.clearColor()
		
		
		
		
		
		view.addSubview(nytTable)
		
		self.view = view
		
	}

	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	

		
		let url = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/\(sectionChoice)/7.json?offset=0&api-key=b3e1e33b6a14725b136d2a0915eb9c60%3A0%3A56929610"
		
		
	
	

		

		Alamofire.request(.GET, url, parameters: nil).responseJSON{response in
			if let JSON = response.result.value as? Dictionary<String,AnyObject>{
				
				
				//print("\(JSON)")
				//**************
				if let results = JSON["results"] as? Array<Dictionary<String,AnyObject>>{
					
					
					//print("\(results)")
					for nytInfo in results{
						let result = NYTModel()
						result.populate(nytInfo)
						self.nytArray.append(result)
					}
					
										
					
				}
				self.nytTable.reloadData()
			}
		}
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	
	// MARK: - My Functions
	
	
	func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 10
	}
	
	func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let header = UIView()
		header.backgroundColor = UIColor.clearColor()
		return header
	}
	

	
	
	
	
	override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
		
		dispatch_async(dispatch_get_main_queue(), {
			let item = object as? NYTModel
			item?.removeObserver(self, forKeyPath: "image", context: nil)
			if (keyPath == "image"){
			//print("IMAGE DOWNLOADED!!!")
				self.nytTable.reloadData()
				
			}
		})
	}
	
	
	func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		return 60 //cell height
	}
	
	func configureCell(cell:UITableViewCell, indexPath:NSIndexPath) -> UITableViewCell{
		let article = self.nytArray[indexPath.row]
		let articleTitle = "\(article.title)"
		
		
		if (article.media.count > 0 && article.mediaMetaData.count > 0){
			if(article.mediaMetaData.count == 1){
				let articleImage = article.mediaMetaData[0]
				article.imageUrl = articleImage["url"] as! String
			}else if(article.mediaMetaData.count == 2){
				let articleImage = article.mediaMetaData[1]
				article.imageUrl = articleImage["url"] as! String
			}else{
				let articleImage = article.mediaMetaData[2]
				article.imageUrl = articleImage["url"] as! String
			}
			
			
            //print("ImageUrl \(nytPayload.imageUrl)")
            //print("image/imageurl: \(nytPayload.image), \(nytPayload.imageUrl)")
		}
        
        
        
		cell.textLabel?.text = articleTitle
		
		//get the image
		if (article.image == nil){
			if(article.imageUrl != nil){
		
			article.addObserver(self, forKeyPath: "image", options: .Initial, context:nil)
			cell.imageView?.image = nil
			article.fetchImage()
			return cell
			}
		}

		//place image in tableviewcell
        cell.imageView?.image = article.image
		return cell
	}
	
	
	
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
		let item = self.nytArray[indexPath.row]
		let itemVc = NYTArticleViewController()
		itemVc.item = item
		
		self.navigationController?.pushViewController(itemVc, animated: true)
		
		//deselects selected row after moving to the chosen cell
		tableView.deselectRowAtIndexPath(indexPath, animated: true)
	
	}
	

	
	// MARK: - TableViewDatasource Delegates
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		
		return self.nytArray.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
		
		let cellId = "cellId"
		
		if let cell = tableView.dequeueReusableCellWithIdentifier(cellId){
			return self.configureCell(cell,indexPath:indexPath)
		}
		
		let cell = UITableViewCell(style: .Default, reuseIdentifier: cellId)
        cell.textLabel?.font = UIFont(name:"Avenir", size:13)
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        cell.imageView!.layer.cornerRadius = 10 / 2.0
        cell.imageView!.clipsToBounds = true
        cell.imageView?.layer.cornerRadius = 10
		cell.contentView.layoutMargins.bottom = 10
		return self.configureCell(cell,indexPath:indexPath)
		
		
	}
	
	
	
	
	
	
	
	
	
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
