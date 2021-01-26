use proconio::input;

fn main() {
    proconio::input! {
        n: usize,
        l: [usize; n],
    }

    let mut ans = 0;

    // 三角形を作るには一番長い辺が、他の2辺の長さの和よりも短い必要
    for i in 0..n {
        for j in i+1..n {
            if l[i] == l[j] { continue; }

            for k in j+1..n {
                if (l[i] == l[k] || l[j] == l[k]) { continue; }

                let mut v = [l[i], l[j], l[k]];
                v.sort();
                if v[2] < v[0] + v[1] { ans += 1; }
            }
        }
    }

    println!("{}", ans);
}
