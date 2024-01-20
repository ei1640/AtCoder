use proconio::input;

fn main() {
   input! {
   	  n: i32,
	  a: [i32; n],
   }

   println!("{}", a.into_iter().sum::<i32>());

}