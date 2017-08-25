//
//  nOtp.swift
//  nhello
//
//  Created by magmajo on 2017. 8. 23..
//
//

import Foundation

public class nOtp {
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
    
    
    /////////////////////////////////////////////
    /// OtpGeneral
    /////////////////////////////////////////////
    public class OtpGeneral{
        static var my = OtpGeneral()
        var mGmt : Int32 = 0
        var mKey : String = ""
        
        public init(){
            self.mGmt = 0
            self.mKey = "asdfghjkl1234567890"
        }
        
        public func getKey() -> String {
            return self.mKey
        }
        
        public func generate(_ gmt: Int, key: String?) -> String {
            // guard let url = URL(string: "\(value)"), url != nil else {
            //    error
            //}
            if let key_ = key {
                self.mKey = key_
            }
            return "123456"
        }
    } // OtpGeneral end.
    
    /////////////////////////////////////////////
    /// OtpEstorm
    /////////////////////////////////////////////
    public class OtpEstorm{
        static var my = OtpEstorm()
        var mGmt : Int32 = 0
        var mKey : String = ""
        
        public init(){
            self.mGmt = 0
            self.mKey = "asdfghjkl1234567890"
        }
        
        public func getKey() -> String {
            return self.mKey
        }
        
        public func generate(_ gmt: Int, key: String?) -> String {
            // guard let url = URL(string: "\(value)"), url != nil else {
            //    error
            //}
            if let key_ = key {
                self.mKey = key_
            }
            return "123456"
        }
    } // OtpEstorm end.
    
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
    public static func hello(_ world: String) {
        print("hello \(world)")
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
    public static func test(_ params: String){
        print(params)
    }
    
}
