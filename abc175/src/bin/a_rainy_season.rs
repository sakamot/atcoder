use proconio::input;

fn main() {
    proconio::input! {
        s: String,
    }

    let mut cnt = 0;
    let mut max = 0;

    for x in s.chars() {
        if (x == 'R') {
            cnt += 1;
        } else {
            max = max.max(cnt);
            cnt = 0;
        }
        max = max.max(cnt);
    }

    println!("{}", max)
}
