//
//  NYTModel.swift
//  Profiler
//
//  Created by Devinci on 4/16/16.
//  Copyright © 2016 JDRichardsTech. All rights reserved.
//

import UIKit
import Alamofire

class NYTModel: NSObject {

	var title: String!
	var image: UIImage?
	var imageUrl: String!
	var articleUrl:String!
	var abstract: String!
	var caption: String!
	var datePublished:String!
	var isFetching = false
	var media: Array<Dictionary<String,AnyObject>>!
	var mediaMetaData: Array<Dictionary<String,AnyObject>>!
	
	
	
	func fetchImage(){
		if (self.isFetching == true){ // currently fetching, ignore
			return
		}
	
		//print("FETCH IMAGE")
		self.isFetching = true
		Alamofire.request(.GET, self.imageUrl, parameters: nil).response { (request, response, data, error) in
			self.isFetching = false
			
			if (data != nil){
				self.image = UIImage(data: data!)
			}
			
			
		}
	}
	
	
	
	func populate(info: Dictionary<String,AnyObject>){
	
		if let title = info["title"] as? String{
			self.title = title
		}
		
		if let datePublished = info["published_date"] as? String{
			self.datePublished = datePublished
		}
		
		if let articleUrl = info["url"] as? String{
			self.articleUrl = articleUrl
		}
		
		if let abstract = info["abstract"] as? String{
			self.abstract = abstract
		}
		if let media = info["media"] as? Array<Dictionary<String,AnyObject>>{
			self.media = media
			
		}

		
		for element in media{
			mediaMetaData = element["media-metadata"]as! Array<Dictionary<String, AnyObject>>
			caption = element["caption"] as? String!
			return
		}
		
			}
	
}

	


