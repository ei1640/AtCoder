import Foundation

let input = readLine()!.split(separator: " ")

let h = Int(input[0])!
let w = Int(input[1])!

var room = [[Character]]()

for _ in 0..<h {
    room.append(Array(readLine()!))
}

for i in 0..<h {
    for j in 0..<(w - 1) {
        if room[i][j] == "T" && room[i][j+1] == "T" {
            room[i][j] = "P"
            room[i][j+1] = "C"
        }
    }
}

for r in room {
    print(String(r))
}