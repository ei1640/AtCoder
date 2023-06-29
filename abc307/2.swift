import Foundation

let input = readLine()!.split(separator: " ")

let n = Int(input[0])!

var ch:[String] = []

for _ in 0..<n {
    ch.append(readLine()!)
}

for i in 0..<n {
    for j in 0..<n {
        let str1 = ch[i] + ch[j]
        let str2 = String(str1.reversed())
//        print(str1 + " " + str2 )
        if str1 == str2 && i != j {
            print("Yes")
            exit(0)
        }
    }
}

print("No")