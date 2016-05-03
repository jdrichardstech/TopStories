//
//  PFFeedViewController.swift
//  Profiler
//
//  Created by Devinci on 4/15/16.
//  Copyright © 2016 JDRichardsTech. All rights reserved.
//

import UIKit
import Alamofire

class PFFeedViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
	// MARK: - My Classes
	
	var pfTable:UITableView!
	var pfArray = Array<PFModel>()
	var image:UIImageView!
	
	
	
	// MARK: - Lifecycles

	
	override func loadView() {
		super.loadView()
		self.title = "Profiler"
		self.edgesForExtendedLayout = .None
		let frame = UIScreen.mainScreen().bounds
		let view = UIView(frame: frame)
		view.backgroundColor = UIColor.greenColor()
		
		self.image = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: 150))
		self.image.backgroundColor=UIColor.yellowColor()
		
		view.addSubview(image)
		
		self.pfTable = UITableView(frame: CGRect(x: 0, y:151 , width: frame.size.width, height:frame.size.height-200))
		self.pfTable.dataSource = self
		self.pfTable.delegate = self
		view.addSubview(pfTable)
		
		self.view = view
	}
	
	

		override func viewDidLoad() {
			super.viewDidLoad()
			
			let url = "http://api.randomuser.me/?results=20"
			Alamofire.request(.GET, url, parameters: nil).responseJSON{response in
				if let JSON = response.result.value as? Dictionary<String,AnyObject>{
					
					//print("\(JSON)")
					
					if let results = JSON["results"] as? Array<Dictionary<String,AnyObject>>{
						
						for profileInfo in results{
							
							let result = PFModel()
							result.populate(profileInfo)
							self.pfArray.append(result)
						}
					}
					dispatch_async(dispatch_get_main_queue(), {
						self.pfTable.reloadData()
					})
					
				
			}
				
			}
			
	}
	

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	// MARK: - My Functions
	
//	func configureCell(cell,indexPath:NSIndexSet){
//	
//	}
	
	// MARK: - TableViewDatasource Delegates
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{

		return self.pfArray.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
	
		let profile = self.pfArray[indexPath.row]
		let one = "\(indexPath.row+1) - \(profile.firstName) \(profile.lastName): \(profile.gender)"
		
		let cellId = "cellId"
		
		if let cell = tableView.dequeueReusableCellWithIdentifier(cellId){
			cell.textLabel?.text = one
			return cell
		}
		
		let cell = UITableViewCell(style: .Default, reuseIdentifier: cellId)
		cell.textLabel?.text = one
		return cell
		
	
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
