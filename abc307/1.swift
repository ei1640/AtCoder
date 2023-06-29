let input_n = readLine()!.split(separator: " ")

let n = Int(input_n[0])!

let input_a = readLine()!.split(separator: " ")

var a = [Int]()

for i in 0..<(n*7) {
    a.append(Int(input_a[i])!)
}

var ans = [Int]()

for i in 0..<n {
    var record = 0
    for j in 0..<7 {
        record += a[(i*7)+j]
    }
    ans.append(record)
}

for i in 0..<n {
    print(ans[i], terminator: " ")
}
