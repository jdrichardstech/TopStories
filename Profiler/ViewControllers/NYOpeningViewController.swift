//
//  NYTFeedViewController.swift
//  Profiler
//
//  Created by Devinci on 4/16/16.
//  Copyright © 2016 JDRichardsTech. All rights reserved.
//

import UIKit
//import Alamofire

class Timer: NSObject {
	
	var counter: Int = 0
	var timer: NSTimer! = NSTimer()
	
	var timerEndedCallback: (() -> Void)!
	var timerInProgressCallback: ((elapsedTime: Int) -> Void)!
	
	func startTimer(duration: Int, timerEnded: () -> Void, timerInProgress: ((elapsedTime: Int) -> Void)!) {
		
		if !(self.timer?.valid != nil) {
			let aSelector : Selector = #selector(Timer.updateTime(_:))
			
			timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: aSelector, userInfo: duration, repeats: true)
			
			timerEndedCallback = timerEnded
			timerInProgressCallback = timerInProgress
			counter = 0
		}
	}
	
	func updateTime(timer: NSTimer) {
		
		self.counter += 1
		let duration = timer.userInfo as! Int
		
		if (self.counter != duration) {
			timerInProgressCallback(elapsedTime: self.counter)
		} else {
			timer.invalidate()
			timerEndedCallback()
		}
	}
}



class NYTOpeningViewController: UIViewController {
 
	var instructionLabel:UILabel!

	var imageView: UIImageView!
	
	var nextViewButton: UIButton!

	
	
	
	
	
	
	// MARK: - Lifecycles
	
	
	override func loadView() {
		super.loadView()
		let timer = Timer()
		
		timer.startTimer(4, timerEnded: { () -> Void in
			
		self.navigationController?.pushViewController(NYTFeedViewController(), animated: true)
			
			}, timerInProgress: { (elapsedTime) -> Void in
				print("\(Int(elapsedTime))")
		})
		
		//set frame
		self.title = "Top Stories"
		self.edgesForExtendedLayout = .None
		let frame = UIScreen.mainScreen().bounds
		let view = UIView(frame: frame)
		
		view.backgroundColor = UIColor(patternImage: UIImage(named: "times_5.png")!)
		

		
		//add instruction label
		self.instructionLabel = UILabel(frame: CGRect(x: 0, y: 110, width: frame.size.width-20, height: 200))
		self.instructionLabel.center = CGPoint(x: 0.5 * frame.size.width, y: 110)
		self.instructionLabel?.text = "TopStory"
		self.instructionLabel?.textAlignment = .Center
		self.instructionLabel?.font = UIFont(name:"HelveticaNeue", size:40)
		self.instructionLabel?.textColor = UIColor.whiteColor()
		self.instructionLabel?.numberOfLines=0
		self.instructionLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
		view.addSubview(instructionLabel)
		
		//add instruction label
		self.instructionLabel = UILabel(frame: CGRect(x: 0, y: 210, width: frame.size.width-20, height: 200))
		self.instructionLabel.center = CGPoint(x: 0.5 * frame.size.width, y: 210)
		self.instructionLabel?.textAlignment = .Center
		self.instructionLabel?.text = "Read the Top 20 Stories in each section from the past 7 days"
		self.instructionLabel?.font = UIFont(name:"HelveticaNeue", size:20)
		self.instructionLabel?.textColor = UIColor.whiteColor()
		self.instructionLabel?.numberOfLines=0
		self.instructionLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
		view.addSubview(instructionLabel)
		
		
		
		
			
		
		self.view = view
		
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		
		
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	

	
	
	}
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	

