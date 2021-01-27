use proconio::input;

fn main() {
    proconio::input! {
        n: usize,
        d: f64,
        xy: [(i64, i64); n],
    }

    // (i64, i64)はタプル

    let mut ans = 0;

    for v in xy {
        if ((v.0.pow(2) + v.1.pow(2)) as f64).sqrt() <= d {
            ans += 1;
        }
    }

    println!("{}", ans);
}
