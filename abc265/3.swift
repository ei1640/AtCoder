var h, w: Int!
var g_check = [[Int]](repeating: [Int](repeating: 0, count: 555), count: 555)
var g_num = [[Int]](repeating: [Int](repeating: 0, count: 555), count: 555)

main()

func main() {

    let input = readLine()!.split(separator: " ")
    h = Int(input[0])!
    w = Int(input[1])!

    for i in 0..<h {
        let input_g = Array(readLine()!)
        for j in 0..<w {
            if( input_g[j] == "U" ) {
                g_num[i][j] = 0
            } else if( input_g[j] == "D" ) {
                g_num[i][j] = 1
            } else if( input_g[j] == "L" ) {
                g_num[i][j] = 2
            } else if( input_g[j] == "R" ) {
                g_num[i][j] = 3
            }
        }
    }

    let (ans_h, ans_w) = dfs(now_h: 0, now_w:0)

    if( ans_h == -1 && ans_w == -1 ) {
        print( -1 )
    } else {
        print(ans_h + 1, ans_w + 1)
    }

}

func dfs (now_h: Int, now_w: Int) -> (Int, Int) {

    let move: [(move_h: Int, move_w: Int)] = [(-1, 0),(1, 0),(0, -1),(0, 1)]

    g_check[now_h][now_w] = -1

    let next_h = now_h + move[g_num[now_h][now_w]].move_h
    let next_w = now_w + move[g_num[now_h][now_w]].move_w

    if( next_h < 0 || h <= next_h || next_w < 0 || w <= next_w ) {
        return (now_h, now_w)
    }

    if( g_check[next_h][next_w] == -1 ) {
        return(-1 , -1)
    }

    return dfs(now_h: next_h, now_w: next_w)

}