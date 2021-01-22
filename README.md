# AtCoder

## [AtCoder Beginner Contest 178 \- AtCoder](https://atcoder.jp/contests/abc178)

### C Ubiquity

**包除原理**  
0が含まれないような数列の個数 `9**n`  
9が含まれないような数列の個数 `9**n`  
0も9も含まれないような数列の個数 `(10-2)**n = 8**n`  
すべての数列の個数 - 0が含まれないような数列の個数 - 9が含まれないような数列の個数 + 0も9も含まれないような数列の個数

## [AtCoder Beginner Contest 177 \- AtCoder](https://atcoder.jp/contests/abc177)

### C Sum of product of pairs

```
  a[i]*a[i+1] + a[i]*a[i+2] + a[i]*a[i+3] + a[i]*a[i+4]
= a[i] * (a[i+1] + a[i+2] + a[i+3] + a[i+4])
```
なので  
`(a[i+1] + a[i+2] + a[i+3] + a[i+4])` の累積和を作っておく  
`a = [1, 2, 3, 4]` の時、 `s = [9(2+3+4), 7(3+4), 4, 0]` を作る  
`s[i]*a[i]` を足して余りを求める

## [AtCoder Beginner Contest 181 \- AtCoder](https://atcoder.jp/contests/abc181)

### C Collinearity

`(x1,y1)` と `(x2,y2)` を通る直線の傾きは、 `y2−y1 / x2−x1`

### D Hachi

8の倍数の判定法(8の倍数は下3桁が8の倍数なら8の倍数になる)

## [AtCoder Beginner Contest 182 \- AtCoder](https://atcoder.jp/contests/abc182)

### C To 3

* bit全探索
* [AtCoder ABC 182 C \- To 3 \(灰色, 300 点\) \- けんちょんの競プロ精進記録](https://drken1215.hatenablog.com/entry/2020/11/30/014517)

### D Wandering

* 累積和の累積
* [AtCoder ABC 182 D \- Wandering \(茶色, 400 点\) \- けんちょんの競プロ精進記録](https://drken1215.hatenablog.com/entry/2020/11/30/031357)
  
