use proconio::input;

fn main() {
    proconio::input! {
        n: usize,
        a: [usize; n]
    }

    let mut ans = 0;

    for l in 0..n {
        let mut min = std::usize::MAX;
        for r in l..n {
            // 範囲の中で最小の数字を範囲数分掛ける
            min = min.min(a[r]);
            ans = ans.max((r-l+1) * min)
        }
    }

    println!("{}", ans);
}
