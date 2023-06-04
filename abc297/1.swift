let input = readLine()!.split(separator: " ")

let n = Int(input[0])!
let d = Int(input[1])!

guard let input_t = readLine()?.split(separator: " ").map({ Int($0)! }) else { fatalError() }

var ans = -1

for i in 0..<(n-1) {
    if input_t[i+1] - input_t[i] <= d && ans == -1 {
        ans = input_t[i+1]
    }
}

print(ans)