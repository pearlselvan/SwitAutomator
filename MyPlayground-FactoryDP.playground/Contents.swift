//: Playground - noun: a place where people can play
//http://www.5neo.be/design-patterns-in-swift-factory-method-creational/


import Foundation
import UIKit

protocol Browser {
    var name: String {get set}
    var windowsize : Double {get set }
    func getBrowser() -> String
}


protocol CreateBrowserDriver {
    func createDriver() -> Browser
}

class FireFoxBrowser :  Browser {
    
    var name : String = "FireFox"
    var windowsize: Double = 100
    
    func getBrowser() -> String {
        return "Firefox"
    }
}


class ChromeBrowser : Browser {
    
    
    var name: String = "Chrome"
    var windowsize: Double = 200
    
    func getBrowser() -> String {
        return "Chrome"
    }
}


class FireFoxDriver : CreateBrowserDriver {
    
    static let sharedInstance : FireFoxDriver = FireFoxDriver()
    func createDriver() -> Browser {
        return FireFoxBrowser()
    }
    
}


class ChromeDriver : CreateBrowserDriver {
    static let sharedInstance : ChromeDriver = ChromeDriver()
    func createDriver() -> Browser {
        return ChromeBrowser()
    }
}


// main 

let Start_Firefox:Browser =  FireFoxDriver.sharedInstance.createDriver()
print ("Firefox instance ",Start_Firefox.getBrowser())

