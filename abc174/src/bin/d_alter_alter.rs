use proconio::input;

fn main() {
    proconio::input! {
        _: usize,
        c: String,
    }

    println!("{}", alter_alter(c));
}

fn alter_alter(c: String) -> usize {
    // Rの出現回数を調べる
    let r_count = &c.match_indices("R").count();
    // 先頭からRの個数分の間にあるWの出現回数を数える
    let ans = &c[0..*r_count].match_indices("W").count();

    return *ans;
}

#[test]
fn case1() {
    assert_eq!(2, alter_alter("WWRR".to_string()));
}

#[test]
fn case2() {
    assert_eq!(0, alter_alter("RR".to_string()));
}

#[test]
fn case3() {
    assert_eq!(3, alter_alter("WRWWRWRR".to_string()));
}

