use proconio::input;

fn main() {
    proconio::input! {
        mut x: i64,
        mut k: i64,
        mut d: i64,
    }

    x = x.abs();
    let m = x/d;

    if m < k {
        x -= m * d;
        k -= m;
        println!("{}", (x-(k%2)*d).abs())
    } else {
        println!("{}", (x-(k*d)).abs())
    }
}
