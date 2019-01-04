//
//  UIData+Extensions.swift
//
//
//  Created by Alexandr on 1/1/19.
//  Copyright © 2017 Alexander Zaporozhchenko. All rights reserved.
//

import Foundation


extension Data {
    
    func toChunksWith(chunkSize:Int) -> Array<Data> {
        
        var offset = 0
        var chunks = Array<Data>()
        
        repeat {
            let thisChunkSize = ((count - offset) > chunkSize) ? chunkSize : (count - offset)
            let chunk         = subdata(in: offset..<offset + thisChunkSize )
            chunks.append(chunk)
            offset += thisChunkSize
            
        } while (offset < count)
                
        
        return chunks
    }
}

