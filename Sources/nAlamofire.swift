//
//  nalamofire.swift
//  nhello
//
//  Created by magmajo on 2017. 8. 23..
//
//
import Foundation
import Alamofire

/////////////////////////////////////////////
/// nMagma.nLog namespace
/////////////////////////////////////////////
public final class nAlamofire{
    /////////////////////////////////////////////
    /// Hello
    /////////////////////////////////////////////
    public class Hello{
        static var my = Hello("")
        var mWorld : String? = nil
        
        public init(_ world: String?) {
            if let world_ = world {
                self.mWorld = world_
            }
        }
        public func world(){
            print("Hello \(self.mWorld)")
        }
    } // Hello end.

    /**
     This is an extremely complicated method that concatenates the first and last name and produces the full name.
     
     - Parameter message: The first part of the full name.
     - Parameter file: The last part of the fullname.
     - Parameter function: The last part of the fullname.
     - Parameter line: The last part of the fullname.
     
     ### Usage Example: ###
     ````
     nLog.log("test log")
     ````
     
     * Use the `doubleValue(_:)` function to get the double value of any number.
     * Only ***Int*** properties are allowed.
     
     */
    public static func hello(url: String = "https://httpbin.org/get"){
        print(Alamofire.request(url))
    }
    
    /**
     This is an extremely complicated method that concatenates the first and last name and produces the full name.
     
     - Parameter message: The first part of the full name.
     - Parameter file: The last part of the fullname.
     - Parameter function: The last part of the fullname.
     - Parameter line: The last part of the fullname.
     
     ### Usage Example: ###
     ````
     nLog.log("test log")
     ````
     
     * Use the `doubleValue(_:)` function to get the double value of any number.
     * Only ***Int*** properties are allowed.
     
     */
    public static func test(url: String = "https://httpbin.org/get"){
        Alamofire.request(url).responseJSON { response in
            print(response.request ?? "none")  // original URL request
            print(response.response ?? "none") // HTTP URL response
            print(response.data ?? "none")     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }

}

