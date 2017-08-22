//
//  ViewController.swift
//  Banana
//
//  Created by Sam Meech-Ward on 2017-08-22.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var morty = Morty()
    
    lazy var time = Date()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://www.adultswim.com")!
        
        let urlRequest = URLRequest (url: url)
        
        let configuration = URLSessionConfiguration.default
        
        let urlSession = URLSession(configuration: configuration)
        
        let dataTask = urlSession.dataTask(with: urlRequest) { (data, urlResponse, error) in
            
            if let error = error {
                return
            }
            
            if let data = data {
                
                // Data is unwrapped
                
                // Parse the json
                
                // Unrapping optional dictionary things
            }
            
            guard let data = data else {
                // This means that data is nil
                // Handle the issue
                print("Data is nil for some reason")
                return
            }
            
            guard let urlResponse = urlResponse else {
                // Handle the issues
                return
            }
            
            // Data is unwrapped.
            
            // Successful code will go at the end of all guards
        }
        
        dataTask.resume()
        
        var string = "🤗"
        
        string.uppercased().lowercased()
        
        let frame = CGRect(x: 1, y: 1, width: 1, height: 1)
        
        let morty = Morty()
        morty.summer = "💩"
        
        var rick = Rick()
        rick.name = "Pickle Rick"
        
        print("World code: \(PortalGunDimension.pizzaWorld.worldCode()) emoji: \(PortalGunDimension.pizzaWorld.emoji())")
        
//        rick.li
        //let liked = rick.likeJerry(dimension: .cowWorld)
        
//        enum LikeJerryError: Error {
//            case hesAnAss💩
//            case cowError
//            case jerryIsJerry
//        }
        var liked: Bool?
        
        do {
            liked = try rick.likeJerry(dimension: .cowWorld)
        } catch LikeJerryError.hesAnAss💩 {
            print("hesAnAss💩")
        } catch LikeJerryError.cowError {
            print("cow error")
        } catch LikeJerryError.jerryIsJerry {
            print("💩")
        } catch {
            print("🤗")
        }
        
        // Check what liked is, do something with it
        print(liked)
    }

    
    func goOnAdventure() {
//        morty
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

