//
//  PGFunction.swift
//  PL/Swift
//
//  Created by Helge Hess on 05.01.18.
//  Copyright © 2018-2019 ZeeZide GmbH. All rights reserved.
//

import CPLSwift

public extension FunctionCallInfoBaseData {
  
  /// Access PostgreSQL function call arguments as a Datum
  subscript(datum idx: Int) -> Datum? {
    // convert tuple to index
    switch idx {
      case 0: return args.0
      case 1: return args.1
      case 2: return args.2
      case 3: return args.3
      case 4: return args.4
      case 5: return args.5
      case 6: return args.6
      case 7: return args.7
      default: return nil
    }
  }
  
  /// Access PostgreSQL function call arguments as an Int
  subscript(int idx: Int) -> Int {
    guard let datum = self[datum: idx] else { return -42 }
    return datum.intValue
  }
}
