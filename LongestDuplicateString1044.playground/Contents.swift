import UIKit

var str = "Hello, playground"

func longestDuplicateString(str: String) -> String {
    
    var copysubstr: [Character] = []
    var subStrCollection : [String] = []
    
    for (index,eachLetter) in str.enumerated() {
        
        let indexString = str.index(str.startIndex, offsetBy: index)
        let originalsubstr = str.suffix(from: indexString)

        print("originalsubstr \(originalsubstr)")
        
        
        copysubstr.append(eachLetter)
        print("copysubstr is \(String(copysubstr))")
        if originalsubstr.contains(String(copysubstr))
        {
            print("entered here")
            if str.count == index {
                return String(copysubstr)
            }
            
            continue
        }else{
            

            copysubstr.removeLast()
            let string = String(copysubstr)
            subStrCollection.append(string)
            
            copysubstr = [eachLetter]

           
        }
        
       
    }
    
 
    subStrCollection.sort {
        $0.count > $1.count
    }
    
    return subStrCollection.first ?? ""
    
    
}

var answ = longestDuplicateString(str: "banabana#")
print(answ)
