//
//  Extensions.swift
//
//
//  Created by Alexander Zaporozhchenko on 1/1/19.
//  Copyright © 2017 Alexander Zaporozhchenko. All rights reserved.
//

import Foundation


extension String {
    
    func dictionaryValue() -> [String: AnyObject]? {
        if let data = self.data(using: String.Encoding.utf8) {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as? [String: AnyObject]
                return json
                
            } catch {
                print("Error converting to JSON")
                return nil
            }
        }
        return nil
    }
    
    func arrayValue() -> [String]? {
        if let data = self.data(using: String.Encoding.utf8) {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as? [String]
                return json
                
            } catch {
                print("Error converting to JSON")
                return nil
            }
        }
        return nil
    }
}

extension Dictionary {
    
    func jsonString() -> String? {
        do {
            let data: Data = try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
            let str = String(data: data, encoding: .utf8)!
            return str
        }
        catch
        {
            print("Error converting Dictionary to jsonString")
            return nil
        }
    }
}

extension Array {
    
    func jsonString() -> String? {
        
        do {
            let data = try JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted])
            let str = String(data: data, encoding: .utf8)
            return str
            
        } catch {
            print("Error converting Array to jsonString")
            return nil
        }
    }
}

