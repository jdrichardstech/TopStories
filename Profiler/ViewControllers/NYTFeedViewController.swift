//
//  NYTFeedViewController.swift
//  Profiler
//
//  Created by Devinci on 4/16/16.
//  Copyright © 2016 JDRichardsTech. All rights reserved.
//

import UIKit
import Alamofire

class NYTFeedViewController: UIViewController {
 
	var instructionLabel:UILabel!
	var technologyButton: UIButton!
	//var artsButton: UIButton!
	var politicsButton: UIButton!
	var foodButton: UIButton!
	var worldButton: UIButton!
	var healthButton: UIButton!
	var nyButton: UIButton!
	var realEstateButton: UIButton!
	var travelButton: UIButton!
	var internationalButton:UIButton!
	var nystyleButton:UIButton!
	var magazineButton: UIButton!
	var imageView: UIImageView!
	var image: UIImage = UIImage(named: "nytimes.png")!
	
	
	
	
	// MARK: - Lifecycles
	
	
	override func loadView() {
		super.loadView()
		
		
		//set frame
		self.title = "Top Stories"
		self.edgesForExtendedLayout = .None
		let frame = UIScreen.mainScreen().bounds
		let view = UIView(frame: frame)
		
		view.backgroundColor = UIColor(patternImage: UIImage(named: "times_5.png")!)
		
		
		//add image
		
		self.imageView = UIImageView(image: image)
		self.imageView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 150)
		view.addSubview(imageView)
		
		
		//add instruction label
		self.instructionLabel = UILabel(frame: CGRect(x: 0, y: 210, width: frame.size.width-20, height: 200))
		self.instructionLabel.center = CGPoint(x: 0.5 * frame.size.width, y: 210)
		self.instructionLabel?.text = "Choose a section below to read the top NY Times stories of the past week:"
		self.instructionLabel?.font = UIFont(name:"HelveticaNeue-Bold", size:17)
		self.instructionLabel?.textColor = UIColor.whiteColor()
		self.instructionLabel?.numberOfLines=0
		self.instructionLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
		view.addSubview(instructionLabel)
	

		//businessButton
		self.nyButton = UIButton(type: .Custom)
		
		self.nyButton.frame = CGRect(x: 0, y: 475, width: 110, height: 45)
		self.nyButton.center = CGPoint(x: 0.5 * frame.size.width-65, y: 475)
		self.nyButton.backgroundColor = UIColor.blackColor()
		self.nyButton.setTitle("New York", forState: .Normal)
		self.nyButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.nyButton.titleLabel?.textAlignment = .Center
		self.nyButton.layer.cornerRadius = 10
		self.nyButton.layer.borderWidth = 1
		self.nyButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.nyButton.titleLabel?.text = "New York"
		
		self.nyButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionNY(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(nyButton)
		
		
		//businessButton
		self.magazineButton = UIButton(type: .Custom)
		
		self.magazineButton.frame = CGRect(x: 0, y: 475, width: 110, height: 45)
		self.magazineButton.center = CGPoint(x: 0.5 * frame.size.width+65, y: 475)
		self.magazineButton.backgroundColor = UIColor.blackColor()
		self.magazineButton.setTitle("Magazine", forState: .Normal)
		self.magazineButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.magazineButton.titleLabel?.textAlignment = .Center
		self.magazineButton.layer.cornerRadius = 10
		self.magazineButton.layer.borderWidth = 1
		self.magazineButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.magazineButton.titleLabel?.text = "Magazine"
		
		self.magazineButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionMagazine(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(magazineButton)
		
		
		//businessButton
		self.nystyleButton = UIButton(type: .Custom)
		
		self.nystyleButton.frame = CGRect(x: 0, y: 415, width: 110, height: 45)
		self.nystyleButton.center = CGPoint(x: 0.5 * frame.size.width-65, y: 415)
		self.nystyleButton.backgroundColor = UIColor.blackColor()
		self.nystyleButton.setTitle("Style", forState: .Normal)
		self.nystyleButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.nystyleButton.titleLabel?.textAlignment = .Center
		self.nystyleButton.layer.cornerRadius = 10
		self.nystyleButton.layer.borderWidth = 1
		self.nystyleButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.nystyleButton.titleLabel?.text = "Style"
		
		self.nystyleButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionFashion(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(nystyleButton)
		
		//artsButton
		self.travelButton = UIButton(type: .Custom)
		
		self.travelButton.frame = CGRect(x: 0, y: 415, width: 110, height: 45)
		self.travelButton.center = CGPoint(x: 0.5 * frame.size.width+65, y: 415)
		self.travelButton.backgroundColor = UIColor.blackColor()
		self.travelButton.setTitle("Travel", forState: .Normal)
		self.travelButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.travelButton.titleLabel?.textAlignment = .Center
		self.travelButton.layer.cornerRadius = 10
		self.travelButton.layer.borderWidth = 1
		self.travelButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.travelButton.titleLabel?.text = "Travel"

		self.travelButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionTravel(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(travelButton)
		
		//realEstateButton
		self.realEstateButton = UIButton(type: .Custom)
		
		self.realEstateButton.frame = CGRect(x: 0, y: 350, width: 110, height: 45)
		self.realEstateButton.center = CGPoint(x: 0.5 * frame.size.width-65, y: 350)
		self.realEstateButton.backgroundColor = UIColor.blackColor()
		self.realEstateButton.setTitle("Real Estate", forState: .Normal)
		self.realEstateButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.realEstateButton.titleLabel?.textAlignment = .Center
		self.realEstateButton.layer.cornerRadius = 10
		self.realEstateButton.layer.borderWidth = 1
		self.realEstateButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.realEstateButton.titleLabel?.text = "Real Estate"
		
		self.realEstateButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionRealEstate(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(realEstateButton)
		
		//foodButton
		self.foodButton = UIButton(type: .Custom)
		
		self.foodButton.frame = CGRect(x: 0, y: 350, width: 110, height: 45)
		self.foodButton.center = CGPoint(x: 0.5 * frame.size.width+65, y: 350)
		self.foodButton.backgroundColor = UIColor.blackColor()
		self.foodButton.setTitle("Food", forState: .Normal)
		self.foodButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.foodButton.titleLabel?.textAlignment = .Center
		self.foodButton.layer.cornerRadius = 10
		self.foodButton.layer.borderWidth = 1
		self.foodButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.foodButton.titleLabel?.text = "Food"
		
		
		self.foodButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionFood(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(foodButton)
		
		
		
		//worldButton
		self.worldButton = UIButton(type: .Custom)
		
		worldButton.frame = CGRect(x: 0, y: 285, width: 110, height: 45)
		worldButton.center = CGPoint(x: 0.5 * frame.size.width-65, y: 285)
		worldButton.backgroundColor = UIColor.blackColor()
		worldButton.setTitle("World", forState: .Normal)
		worldButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		worldButton.titleLabel?.textAlignment = .Center
		worldButton.layer.cornerRadius = 10
		worldButton.layer.borderWidth = 1
		worldButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		worldButton.titleLabel?.text = "World"
		
		worldButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionWorld(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(worldButton)
		
		//politicsButton
		self.healthButton = UIButton(type: .Custom)
		
		healthButton.frame = CGRect(x: 0, y: 285, width: 110, height: 45)
		healthButton.center = CGPoint(x: 0.5 * frame.size.width+65, y: 285)
		healthButton.backgroundColor = UIColor.blackColor()
		healthButton.setTitle("Health", forState: .Normal)
		healthButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		healthButton.titleLabel?.textAlignment = .Center
		healthButton.layer.cornerRadius = 10
		healthButton.layer.borderWidth = 1
		healthButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		healthButton.titleLabel?.text = "Health"
		
		
		healthButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionHealth(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(healthButton)

		
		self.view = view
		
	}
		

	override func viewDidLoad() {
		super.viewDidLoad()
		

		
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	
	func btnNextActionFashion(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "fashion"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	func btnNextActionTravel(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "travel"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	func btnNextActionRealEstate(btn: UIButton){
		print("btnNextActionSports")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "real+estate"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	func btnNextActionFood(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "food"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	func btnNextActionWorld(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "world"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	func btnNextActionHealth(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "health"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	
	func btnNextActionMagazine(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "magazine"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	
	func btnNextActionNY(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "nyregion"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
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
