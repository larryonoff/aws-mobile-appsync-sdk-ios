//
// Copyright 2010-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
// http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import Foundation

public enum AWSMutationPriority: Int {
    case veryLow = -8
    case low = -4
    case normal = 0
    case high = 4
    case veryHigh = 8
}

// MARK: - CustomStringConvertible

extension AWSMutationPriority: CustomStringConvertible {
    public var description: String {
        switch self {
        case .veryLow: return "veryLow"
        case .low: return "low"
        case .normal: return "normal"
        case .high: return "high"
        case .veryHigh: return "veryHigh"
        }
    }
}

// MARK: - Operation.QueuePriority

extension AWSMutationPriority {

    var operationQueuePriority: Operation.QueuePriority {
        switch self {
        case .veryLow: return .veryLow
        case .low: return .low
        case .normal: return .normal
        case .high: return .high
        case .veryHigh: return .veryHigh
        }
    }
}
