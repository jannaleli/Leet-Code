import UIKit




func missingNumber(array: [Int]) -> Int {
    
    guard let minValue = array.min() else {
        return 0
    }
    
    guard let maxValye = array.max() else {
        return 0
    }


    var sampleSet = Set(minValue...maxValye)
    var arraySet = Set(array)
    
   var missingNum = sampleSet.subtracting(arraySet)
   
    if missingNum.isEmpty {
        return 0
    }

    return missingNum.first!
    
}

let answer = missingNumber(array: [0,1,2,3])
