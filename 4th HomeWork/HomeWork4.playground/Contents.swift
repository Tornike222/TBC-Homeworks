import Foundation

//Control Flow, Functions and Closures
//1. while ციკლის გამოყენებით, 1-დან 50-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.
var multipledNum:Int = 1
var iterator:Int = 0
//50 მდე რიცხვებზე არ მუშაობს (ინტ64 ის რესურსებს ცდება მაგხელა რიცხვის შენახვა), დავითთან გავიარე და 30მდე ვაკეთებ ამ ლუპს.
while iterator < 30 {
    iterator += 1
    if iterator % 2 == 1 {
        multipledNum *= iterator
    }
}
print(multipledNum)

//2. შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”
var randomString:String = "GelaGnolidze"
var charStore: [String] = []
var reversedString = ""

for char in randomString{
    charStore.append(String(char))
}

for i in stride(from: charStore.count-1, to: -1, by: -1){
    reversedString += charStore[i]
}
print(reversedString)


//3. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
//var trafficLight = 0
//while true{
//    trafficLight+=1
//    switch trafficLight{
//    case 1: 
//        print("🔴")
//        continue
//    case 2:
//        print("🌕")
//        continue
//    case 3:
//        print("🟢")
//        continue
//    default: break
//    }
//    trafficLight=0
//}

//4. Taylor Swit-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”
var tickecOfConcert = 14

while tickecOfConcert != 0{
    tickecOfConcert-=1
    print("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(tickecOfConcert) რაოდენობა")
}

print("ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე")


//5.შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
var randomArray:[Int] = []
var containsOrNot = 0
for _ in 1...15{
    randomArray.append(Int.random(in: 1...20))
}

for i in 0...randomArray.count-1{
    if randomArray.lastIndex(of: randomArray[i])! != randomArray.firstIndex(of: randomArray[i])! {
        containsOrNot += 1
        print(randomArray[i])
    }
}
print(randomArray)

if containsOrNot == 0 {
    print("array-ში ყველა ელემენტი განსხვავებულია")
    
} else {
    print("array შეიცავს მსგავს ელემენტებს")
}
//print(randomArray)

//6. დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას
let num1: Int = 41
let num2: Int = 11

let closureOfSubstract: (Int , Int) -> (Int) = { a , b in
    return (a - b)
}
print(closureOfSubstract(num1,num2))

//7.დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.

print("_________")

func getConsonantCount(word:String) {
    let vowelChars:[Character] = ["a","e","i","o","u"," "]
    var vowelCount = 0
    
    for eachChar in word{
        if vowelChars.contains(eachChar){
            vowelCount += 1
        }
    }
    print("\(word)-ში თანხმოვნების რაოდენობა: ",word.count - vowelCount)

}

getConsonantCount(word: "meotxe davaleba")


//8. შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9 არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.
let firstArray = [8, 4, 9, 9, 0, 2]
let secondArray = [1, 0, 9, 2, 3, 7, 0, 1]
var thirdArray =  firstArray + secondArray
print(thirdArray)
//[8, 4, 9, 9, 0, 2, 1, 0, 9, 2, 3, 7, 0, 1]
var tempVelue = 0

for _ in 0...thirdArray.count {
    for i in 0...thirdArray.count {
        if i+1 < thirdArray.count {
            if thirdArray[i] > thirdArray[i+1] {
                tempVelue = thirdArray[i]
                thirdArray[i] = thirdArray[i+1]
                thirdArray[i+1] = tempVelue
                
            }
        }
    }
}
print(thirdArray)




//9. დაწერეთ ფუნქცია, რომელსაც გადააწვდით int ტიპის პარამეტრს. გამოითვალეთ ამ პარამეტრის ფაქტორიალი და დაბეჭდეთ

func getFactorialOfNum(num:Int) -> () {
    var multipledNum = 1
    for i in stride(from: num, to: 0, by: -1){
        multipledNum*=i
    }
    print(multipledNum)
}

getFactorialOfNum(num: 5)

//10. შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.
let firstArrayOfInts = [1,2,3,4,5,6,7,8,9,10]
var oddNumsArray:[Int] = []
var evenNumsArray:[Int] = []
for i in firstArrayOfInts{
    if i % 2 == 0 {
        evenNumsArray.append(i)
    } else {
        oddNumsArray.append(i)
    }
}

print(oddNumsArray,evenNumsArray)
