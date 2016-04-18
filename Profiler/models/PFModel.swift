//
//  PFModel.swift
//  Profiler
//
//  Created by Devinci on 4/15/16.
//  Copyright © 2016 JDRichardsTech. All rights reserved.
//

import UIKit

class PFModel: NSObject {

	var firstName: String!
	var lastName: String!
	var gender: String!
	
	func populate(info: Dictionary<String,AnyObject>){
		if let name = info["name"] as? Dictionary<String,AnyObject> {
			if let fn = name["first"] as? String{
				self.firstName = fn
			}
			if let ln = name["last"] as? String{
				self.lastName = ln
			}
		}
		if let gender = info["gender"] as? String!{
			self.gender = gender
		}
	
	}
}