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
	var businessButton: UIButton!
	var artsButton: UIButton!
	var politicsButton: UIButton!
	var foodButton: UIButton!
	var worldButton: UIButton!
	var realEstateButton: UIButton!
	var travelButton: UIButton!
	var internationalButton:UIButton!
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
		self.businessButton = UIButton(type: .Custom)
		
		self.businessButton.frame = CGRect(x: 0, y: 425, width: 110, height: 45)
		self.businessButton.center = CGPoint(x: 0.5 * frame.size.width-65, y: 425)
		self.businessButton.backgroundColor = UIColor.blackColor()
		self.businessButton.setTitle("Business", forState: .Normal)
		self.businessButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.businessButton.titleLabel?.textAlignment = .Center
		self.businessButton.layer.cornerRadius = 10
		self.businessButton.layer.borderWidth = 1
		self.businessButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.businessButton.titleLabel?.text = "Business"
		
		self.businessButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionBusiness(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(businessButton)
		
		//artsButton
		self.artsButton = UIButton(type: .Custom)
		
		self.artsButton.frame = CGRect(x: 0, y: 425, width: 110, height: 45)
		self.artsButton.center = CGPoint(x: 0.5 * frame.size.width+65, y: 425)
		self.artsButton.backgroundColor = UIColor.blackColor()
		self.artsButton.setTitle("Arts", forState: .Normal)
		self.artsButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.artsButton.titleLabel?.textAlignment = .Center
		self.artsButton.layer.cornerRadius = 10
		self.artsButton.layer.borderWidth = 1
		self.artsButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.artsButton.titleLabel?.text = "Arts"

		self.artsButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionArts(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(artsButton)
		
		//realEstateButton
		self.realEstateButton = UIButton(type: .Custom)
		
		self.realEstateButton.frame = CGRect(x: 0, y: 360, width: 110, height: 45)
		self.realEstateButton.center = CGPoint(x: 0.5 * frame.size.width-65, y: 360)
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
		
		self.foodButton.frame = CGRect(x: 0, y: 360, width: 110, height: 45)
		self.foodButton.center = CGPoint(x: 0.5 * frame.size.width+65, y: 360)
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
		
		worldButton.frame = CGRect(x: 0, y: 295, width: 110, height: 45)
		worldButton.center = CGPoint(x: 0.5 * frame.size.width-65, y: 295)
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
		self.politicsButton = UIButton(type: .Custom)
		
		politicsButton.frame = CGRect(x: 0, y: 295, width: 110, height: 45)
		politicsButton.center = CGPoint(x: 0.5 * frame.size.width+65, y: 295)
		politicsButton.backgroundColor = UIColor.blackColor()
		politicsButton.setTitle("Politics", forState: .Normal)
		politicsButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		politicsButton.titleLabel?.textAlignment = .Center
		politicsButton.layer.cornerRadius = 10
		politicsButton.layer.borderWidth = 1
		politicsButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		politicsButton.titleLabel?.text = "Politics"
		
		
		politicsButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionPolitics(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(politicsButton)

		
		self.view = view
		
	}
		

	override func viewDidLoad() {
		super.viewDidLoad()
		

		
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	
	func btnNextActionBusiness(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "business"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	func btnNextActionArts(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "arts"
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
	func btnNextActionPolitics(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "politics"
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
