//
//  NYTArticleViewController.swift
//  TopNwes
//
//  Created by Devinci on 4/16/16.
//  Copyright © 2016 JDRichardsTech. All rights reserved.
//

import UIKit
import SafariServices

class NYTArticleViewController: UIViewController,UIScrollViewDelegate, SFSafariViewControllerDelegate {

//MARK: - Variable Declarations
	var imageView:UIImageView!
	var item: NYTModel!
	var titleLabel: UILabel!
	var captionLabel: UILabel!
	var abstractLabel:UILabel!
	var datePublished: UILabel!
	var webButton: UIButton!
	var scrollArticle: UIScrollView!
	
	
	// MARK: - Lifecycles

	override func loadView() {
		super.loadView()
		
		
		
		//setup frame
		self.edgesForExtendedLayout = .None
		let frame = UIScreen.mainScreen().bounds
		let view = UIView(frame: frame)
		view.backgroundColor = UIColor.whiteColor()
		
		
	
		self.scrollArticle = UIScrollView(frame: CGRect(x:0, y:0, width:frame.size.width,height:frame.size.height))
		
		
		view.addSubview(scrollArticle)
		
		scrollArticle.contentSize = CGSize(width: frame.size.width, height: frame.size.height + 100)
		scrollArticle.pagingEnabled = false
		scrollArticle.userInteractionEnabled = true
		scrollArticle.delegate = self
		
		
		
		//add image
		self.imageView = UIImageView(image: self.item.image)
		self.imageView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 250)
		self.imageView.contentMode = .ScaleAspectFit
		self.scrollArticle.addSubview(imageView)
		
		
		
		
		
		//add caption under image
		self.captionLabel = UILabel(frame: CGRect(x: 10, y: 251, width: frame.size.width-20, height: 60))
		self.captionLabel?.text = self.item.caption
		self.captionLabel?.font = UIFont(name:"Avenir", size:12)
		self.captionLabel?.numberOfLines=0
		self.captionLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
		self.scrollArticle.addSubview(captionLabel)
		
		//add title
		self.titleLabel = UILabel(frame: CGRect(x: 10, y: 325, width: frame.size.width-20, height: 40))
		self.titleLabel?.text = self.item.title
		self.titleLabel?.font = UIFont(name:"HelveticaNeue-Bold", size:16)
		self.titleLabel?.numberOfLines=0
		self.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
		self.scrollArticle.addSubview(titleLabel)
		
		//add date publised
		self.datePublished = UILabel(frame: CGRect(x: 10, y: 365, width: frame.size.width-20, height: 30))
		self.datePublished?.text = self.item.datePublished
		self.datePublished?.font = UIFont(name:"HelveticaNeue-Bold", size:12)
		self.datePublished?.numberOfLines=0
		self.datePublished?.lineBreakMode = NSLineBreakMode.ByWordWrapping
		self.scrollArticle.addSubview(datePublished)
		
		
		//add abstract
		self.abstractLabel = UILabel(frame: CGRect(x: 10, y: 390, width: frame.size.width-20, height: 40))
		self.abstractLabel?.text = self.item.abstract
		self.abstractLabel?.font = UIFont(name:"HelveticaNeue", size:13)
		self.abstractLabel?.textColor = UIColor.grayColor()
		self.abstractLabel?.numberOfLines=0
		self.abstractLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
		self.scrollArticle.addSubview(abstractLabel)
		
		
		//go to website		button
		self.webButton = UIButton(type: .Custom)
		
		webButton.frame = CGRect(x: 0, y: 228, width: 110, height: 45)
		webButton.center = CGPoint(x: 0.5 * frame.size.width, y: 465)
		webButton.backgroundColor = UIColor.clearColor()
		webButton.setTitle("Read Article", forState: .Normal)
		webButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
		webButton.titleLabel?.textAlignment = .Center
		webButton.layer.cornerRadius = 10
		webButton.layer.borderWidth = 1
		webButton.layer.borderColor = UIColor.lightGrayColor().CGColor
		webButton.titleLabel?.text = "Top Stories"
		webButton.addTarget(self, action: #selector(NYTArticleViewController.goToUrl), forControlEvents: .TouchUpInside)
		
		self.scrollArticle.addSubview(webButton)
		
		self.view = view
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	
	
	// MARK: - My Functions
	
	
	//send user to article on safari
	func goToUrl(){
	
		if let url = NSURL(string: self.item.articleUrl) {
			let vc = SFSafariViewController(URL:url, entersReaderIfAvailable: true)
			vc.delegate = self
			//UIApplication.sharedApplication().openURL(url)
			presentViewController(vc, animated: true, completion: nil)
		}
	}

	
	func safariViewControllerDidFinish(controller: SFSafariViewController) {
		dismissViewControllerAnimated(true, completion: nil)
	}
	
	

}
