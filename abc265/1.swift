let input = readLine()!.split(separator: " ")

let x = Int(input[0])!
let y = Int(input[1])!
let n = Int(input[2])!

let ans: Int

if ( y / 3 < x ) {
    ans = ( n / 3 ) * y + ( n % 3 ) * x
} else {
    ans = n * x
}

print(ans)