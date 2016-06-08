//
//  NYTFeedViewController.swift
//  TopNwes
//
//  Created by Devinci on 4/16/16.
//  Copyright © 2016 JDRichardsTech. All rights reserved.
//

import UIKit


class NYTFeedViewController: UIViewController {
 //MARK: - Variable Declarations
	var instructionLabel:UILabel!
	var technologyButton: UIButton!
	var artsButton: UIButton!
	var politicsButton: UIButton!
	var foodButton: UIButton!
	var worldButton: UIButton!
	var financeButton: UIButton!
	var USButton: UIButton!
	var businessButton: UIButton!
	var nyButton: UIButton!
	var realEstateButton: UIButton!
	var healthButton: UIButton!
	var travelButton: UIButton!
	var sportsButton: UIButton!
	var internationalButton:UIButton!
	var nystyleButton:UIButton!
	var magazineButton: UIButton!
	var opinionButton: UIButton!
	var imageView: UIImageView!
	var image: UIImage = UIImage(named: "nytimes.png")!
	
	
	
	
	
	
	// MARK: - Lifecycles
	
	
	override func loadView() {
		super.loadView()
		
		
		//set frame
		self.title = "Top Nwes"
		self.edgesForExtendedLayout = .None
		let frame = UIScreen.mainScreen().bounds
		let view = UIView(frame: frame)
		self.navigationItem.hidesBackButton = true
		view.backgroundColor = UIColor(patternImage: UIImage(named: "times_5.png")!)
		
		
		
		//add image
		
		self.imageView = UIImageView(image: image)
		self.imageView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 150)
		view.addSubview(imageView)
		
		
		
		
		
		//businessButton
		self.businessButton = UIButton(type: .Custom)
		
		self.businessButton.frame = CGRect(x: 0, y: 450, width: 85, height: 45)
		self.businessButton.center = CGPoint(x: frame.size.width-60, y: 450)
		self.businessButton.backgroundColor = UIColor.blackColor()
		self.businessButton.setTitle("Business", forState: .Normal)
		self.businessButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.businessButton.titleLabel?.textAlignment = .Center
		self.businessButton.layer.cornerRadius = 10
		self.businessButton.layer.borderWidth = 1
		self.businessButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.businessButton.titleLabel?.font = UIFont(name:"Arial", size:14)
		
		self.businessButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionBusiness(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(businessButton)
		
		//technologyButton
		self.technologyButton = UIButton(type: .Custom)
		
		self.technologyButton.frame = CGRect(x: 0, y: 450, width: 85, height: 45)
		self.technologyButton.center = CGPoint(x: 0.5 * frame.size.width, y: 450)
		self.technologyButton.backgroundColor = UIColor.blackColor()
		self.technologyButton.setTitle("Technology", forState: .Normal)
		self.technologyButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.technologyButton.titleLabel?.textAlignment = .Center
		self.technologyButton.layer.cornerRadius = 10
		self.technologyButton.layer.borderWidth = 1
		self.technologyButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.technologyButton.titleLabel?.font = UIFont(name:"Arial", size: 14)
		
		self.technologyButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionTechnology(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(technologyButton)
		
		
		
		//politicsButton
		self.politicsButton = UIButton(type: .Custom)
		
		self.politicsButton.frame = CGRect(x: 0, y: 450, width: 85, height: 45)
		self.politicsButton.center = CGPoint(x: 60, y: 450)
		self.politicsButton.backgroundColor = UIColor.blackColor()
		self.politicsButton.setTitle("Politics", forState: .Normal)
		self.politicsButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.politicsButton.titleLabel?.textAlignment = .Center
		self.politicsButton.layer.cornerRadius = 10
		self.politicsButton.layer.borderWidth = 1
		self.politicsButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.politicsButton.titleLabel?.font = UIFont(name:"Arial", size: 14)

		
		self.politicsButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionPolitics(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(politicsButton)
		
		
		
		
		
		//artsButton
		self.artsButton = UIButton(type: .Custom)
		
		self.artsButton.frame = CGRect(x: 0, y: 395, width: 85, height: 45)
		self.artsButton.center = CGPoint(x: frame.size.width-60, y: 395)
		self.artsButton.backgroundColor = UIColor.blackColor()
		self.artsButton.setTitle("Arts", forState: .Normal)
		self.artsButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.artsButton.titleLabel?.textAlignment = .Center
		self.artsButton.layer.cornerRadius = 10
		self.artsButton.layer.borderWidth = 1
		self.artsButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.artsButton.titleLabel?.font = UIFont(name:"Arial", size: 14)

		
		self.artsButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionArts(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(artsButton)
		
		
		//businessButton
		self.nyButton = UIButton(type: .Custom)
		
		self.nyButton.frame = CGRect(x: 0, y: 395, width: 85, height: 45)
		self.nyButton.center = CGPoint(x: 0.5 * frame.size.width, y: 395)
		self.nyButton.backgroundColor = UIColor.blackColor()
		self.nyButton.setTitle("New York", forState: .Normal)
		self.nyButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.nyButton.titleLabel?.textAlignment = .Center
		self.nyButton.layer.cornerRadius = 10
		self.nyButton.layer.borderWidth = 1
		self.nyButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.nyButton.titleLabel?.font = UIFont(name:"Arial", size: 14)

		
		self.nyButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionNY(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(nyButton)
		
		
		//magazineButton
		self.magazineButton = UIButton(type: .Custom)
		
		self.magazineButton.frame = CGRect(x: 0, y: 395, width: 85, height: 45)
		self.magazineButton.center = CGPoint(x: 60, y: 395)
		self.magazineButton.backgroundColor = UIColor.blackColor()
		self.magazineButton.setTitle("Magazine", forState: .Normal)
		self.magazineButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.magazineButton.titleLabel?.textAlignment = .Center
		self.magazineButton.layer.cornerRadius = 10
		self.magazineButton.layer.borderWidth = 1
		self.magazineButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.magazineButton.titleLabel?.font = UIFont(name:"Arial", size: 14)

		
		self.magazineButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionMagazine(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(magazineButton)
		
		
		//businessButton
		self.nystyleButton = UIButton(type: .Custom)
		
		self.nystyleButton.frame = CGRect(x: 0, y: 340, width: 85, height: 45)
		self.nystyleButton.center = CGPoint(x: 0.5 * frame.size.width, y: 340)
		self.nystyleButton.backgroundColor = UIColor.blackColor()
		self.nystyleButton.setTitle("Style", forState: .Normal)
		self.nystyleButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.nystyleButton.titleLabel?.textAlignment = .Center
		self.nystyleButton.layer.cornerRadius = 10
		self.nystyleButton.layer.borderWidth = 1
		self.nystyleButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.nystyleButton.titleLabel?.font = UIFont(name:"Arial", size: 14)

		
		self.nystyleButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionFashion(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(nystyleButton)
		
		//travelButton
		self.travelButton = UIButton(type: .Custom)
		
		self.travelButton.frame = CGRect(x: 0, y: 340, width: 85, height: 45)
		self.travelButton.center = CGPoint(x:frame.size.width-60, y: 340)
		self.travelButton.backgroundColor = UIColor.blackColor()
		self.travelButton.setTitle("Travel", forState: .Normal)
		self.travelButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.travelButton.titleLabel?.textAlignment = .Center
		self.travelButton.layer.cornerRadius = 10
		self.travelButton.layer.borderWidth = 1
		self.travelButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.travelButton.titleLabel?.font = UIFont(name:"Arial", size: 14)


		self.travelButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionTravel(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(travelButton)
		
		//realEstateButton
		self.realEstateButton = UIButton(type: .Custom)
		
		self.realEstateButton.frame = CGRect(x: 0, y: 340, width: 85, height: 45)
		self.realEstateButton.center = CGPoint(x: 60, y: 340)
		
		self.realEstateButton.backgroundColor = UIColor.blackColor()
		self.realEstateButton.setTitle("Real Estate", forState: .Normal)
		self.realEstateButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.realEstateButton.titleLabel?.textAlignment = .Center
		self.realEstateButton.layer.cornerRadius = 10
		self.realEstateButton.layer.borderWidth = 1
		self.realEstateButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.realEstateButton.titleLabel?.font = UIFont(name:"Arial", size: 14)
		
		self.realEstateButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionRealEstate(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(realEstateButton)
		
		//foodButton
		self.foodButton = UIButton(type: .Custom)
		
		self.foodButton.frame = CGRect(x: 0, y: 285, width: 85, height: 45)
		self.foodButton.center = CGPoint(x: 0.5 * frame.size.width, y: 285)
		self.foodButton.backgroundColor = UIColor.blackColor()
		self.foodButton.setTitle("Food", forState: .Normal)
		self.foodButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.foodButton.titleLabel?.textAlignment = .Center
		self.foodButton.layer.cornerRadius = 10
		self.foodButton.layer.borderWidth = 1
		self.foodButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.foodButton.titleLabel?.font = UIFont(name:"Arial", size: 14)

		
		
		self.foodButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionFood(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(foodButton)
		
		
		
		//worldButton
		self.worldButton = UIButton(type: .Custom)
		
		worldButton.frame = CGRect(x: 0, y: 285, width: 85, height: 45)
		worldButton.center = CGPoint(x: 60, y: 285)
		worldButton.backgroundColor = UIColor.blackColor()
		worldButton.setTitle("World", forState: .Normal)
		worldButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		worldButton.titleLabel?.textAlignment = .Center
		worldButton.layer.cornerRadius = 10
		worldButton.layer.borderWidth = 1
		worldButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		worldButton.titleLabel?.font = UIFont(name:"Arial", size: 14)
		
		worldButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionWorld(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(worldButton)
		
		//sportsButton
		self.sportsButton = UIButton(type: .Custom)
		
		sportsButton.frame = CGRect(x: 0, y: 285, width: 85, height: 45)
		sportsButton.center = CGPoint(x:frame.size.width-60, y: 285)
		sportsButton.backgroundColor = UIColor.blackColor()
		sportsButton.setTitle("Sports", forState: .Normal)
		sportsButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		sportsButton.titleLabel?.textAlignment = .Center
		sportsButton.layer.cornerRadius = 10
		sportsButton.layer.borderWidth = 1
		sportsButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		sportsButton.titleLabel?.font = UIFont(name:"Arial", size: 14)
		
		
		sportsButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionSports(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(sportsButton)
		
		
		//healthButton
		self.healthButton = UIButton(type: .Custom)
		
		healthButton.frame = CGRect(x: 0, y: 230, width: 85, height: 45)
		healthButton.center = CGPoint(x:frame.size.width-60, y: 230)
		healthButton.backgroundColor = UIColor.blackColor()
		healthButton.setTitle("Health", forState: .Normal)
		healthButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		healthButton.titleLabel?.textAlignment = .Center
		healthButton.layer.cornerRadius = 10
		healthButton.layer.borderWidth = 1
		healthButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		healthButton.titleLabel?.font = UIFont(name:"Arial", size: 14)
		
		
		healthButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionHealth(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(healthButton)
		
		//opinionButton
		self.opinionButton = UIButton(type: .Custom)
		
		self.opinionButton.frame = CGRect(x: 0, y: 230, width: 85, height: 45)
		self.opinionButton.center = CGPoint(x: 0.5 * frame.size.width, y: 230)
		self.opinionButton.backgroundColor = UIColor.blackColor()
		self.opinionButton.setTitle("Opinion", forState: .Normal)
		self.opinionButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.opinionButton.titleLabel?.textAlignment = .Center
		self.opinionButton.layer.cornerRadius = 10
		self.opinionButton.layer.borderWidth = 1
		self.opinionButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.opinionButton.titleLabel?.font = UIFont(name:"Arial", size: 14)
		
		
		
		self.opinionButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionOpinion(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(opinionButton)
		
		//USButton
		self.USButton = UIButton(type: .Custom)
		
		self.USButton.frame = CGRect(x: 0, y: 230, width: 85, height: 45)
		self.USButton.center = CGPoint(x: 60, y: 230)
		self.USButton.backgroundColor = UIColor.blackColor()
		self.USButton.setTitle("U.S.", forState: .Normal)
		self.USButton.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
		self.USButton.titleLabel?.textAlignment = .Center
		self.USButton.layer.cornerRadius = 10
		self.USButton.layer.borderWidth = 1
		self.USButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		self.USButton.titleLabel?.font = UIFont(name:"Arial", size: 14)
		
		USButton.addTarget(self, action: #selector(NYTFeedViewController.btnNextActionUSNews(_:)), forControlEvents: .TouchUpInside)
		
		view.addSubview(USButton)
		
		self.view = view
		
	}
		

	override func viewDidLoad() {
		super.viewDidLoad()
		

		
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	
	// MARK: - Button Functions
	
	func btnNextActionBusiness(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "business"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	
	func btnNextActionPolitics(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "politics"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	
	func btnNextActionArts(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "arts"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	
	
	func btnNextActionTechnology(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "technology"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
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
		//print("btnNextActionSports")
		
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
	func btnNextActionSports(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "sports"
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
	
	func btnNextActionOpinion(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "opinion"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	
	func btnNextActionUSNews(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "national"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}
	
	func btnNextActionHealth(btn: UIButton){
		//print("btnNextAction")
		
		let nytTitlesVc = NYTTitlesViewController()
		nytTitlesVc.sectionChoice = "health"
		self.navigationController?.pushViewController(nytTitlesVc, animated: true)
		
	}


}
