let input = readLine()!

let s = Array(input)

var check_b = false
var check_rkr = false

for i in 0..<(8 - 1) {
    if(s[i] == "B") {
        for j in (i+1)..<8{
            if(s[j] == "B") {
                if i % 2 != j % 2 {check_b = true}
                break
            }
        }
    }
    if check_b {
        break
    }
}

for i in 0..<(8 - 1) {
    if(s[i] == "R") {
        for j in (i+1)..<8{
            if(s[j] == "R") {
                for k in (i+1)..<j {
                    if(s[k] == "K") {
                        check_rkr = true
                        break
                    }
                }
            }
        }
    }
    if check_rkr {
        break
    }
}

if check_b && check_rkr {print("Yes")}
else {print("No")}