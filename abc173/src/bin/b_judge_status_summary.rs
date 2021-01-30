use proconio::input;

fn main() {
    proconio::input! {
        n: usize,
        mut r: [String; n],
    }

    let r_case = ["AC", "WA", "TLE", "RE"];
    let mut h = std::collections::HashMap::new();


    for x in r {
        *h.entry(x).or_insert(0) += 1;
    }

    //dbg!(&h);

    for c in r_case.iter() {
        println!("{} x {}", c, h.get(&c.to_string()).unwrap_or(&0));
    }
}

fn type_of<T>(_: T) -> String{
  let a = std::any::type_name::<T>();
  return a.to_string();
}
