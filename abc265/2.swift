let input = readLine()!.split(separator: " ")

let n = Int(input[0])!
let m = Int(input[1])!
let t = Int(input[2])!

var b = [Int](repeating: 0, count: n)
var ans = "Yes"

let a = readLine()!.split(separator: " ").map{Int(String($0))!}

for _ in 0..<m {
    let input_xy = readLine()!.split(separator: " ").map{Int(String($0))!}
    let x = input_xy[0]
    let y = input_xy[1]
    b[x - 1] = y
}

var time = t

for i in 0..<(n - 1) {
    time += b[i]
    time = time - a[i]
    if( time <= 0 ){
        ans = "No"
    }
}

print(ans)