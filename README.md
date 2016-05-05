# Solution for the question: "What is the sum of all multiples of 3 or 5 less than 1000?"
[![Build Status](https://travis-ci.org/yang70/sum_of_multiples.svg?branch=master)](https://travis-ci.org/yang70/sum_of_multiples)
by [Matthew Yang](http://matthewgyang.com)

## Question Detail
The problem that I attempted to answer was to find all of the numbers between 0 and 1000 (exclusive) that were multiples of either 3 or 5 and add them all up. 

The answer is: __233,168__

## Introduction
This repo has three different solutions that I came up with written in the [Ruby](https://ruby-lang.org) programming language.

My first two algorithms attempted to take an "object oriented" approach, while my third algorithm was a monkey-patch on `Fixnum` (hey, this is ruby afterall!).

All of my solutions take arguments, meaning they will give the answer to the sum of any 2 multiples under a given limit.  They are not just answers to the exact stated question with 3, 5 and 1000.

## Testing / Benchmarks
In addition to the solution algorithms, I created a small test suite using the [Minitest gem](https://github.com/seattlerb/minitest) as well as benchmarked my three different solutions using the ruby [benchmark module](http://ruby-doc.org/stdlib-2.3.0/libdoc/benchmark/rdoc/Benchmark.html).

Benchmark results can be seen in the comments of the code here: [Benchmarks](https://github.com/yang70/sum_of_multiples/blob/master/benchmark.rb)

## Attempt 1
[See code here](https://github.com/yang70/sum_of_multiples/blob/master/lib/algo_1.rb)

The concept for my first attempt was to create two arrays with the first containing all of the multiples of 3 up to 1000 and the second array would contain all of the multiples of 5 up to 1000.  I could then concatenate them together, call the `Array#uniq` method and then add them all up calling `Array#reduce(:+)`.

To create the two initial arrays I created a private method on the class that just pushed the initial value (either 3 or 5) then added that value to a running total until that total was greater than or equal to 1000.

Even as I wrote this solution I could tell that it would not be very efficient and would also take up more memory than was necessary by creating 2 seperate arrays that would innevitably contain duplicate numbers (hence the call to `Array#uniq`).  It gives the correct answer, however as you'll see in the [benchmarks](https://github.com/yang70/sum_of_multiples/blob/master/benchmark.rb) it is not as efficient as my second attempt.

## Attempt 2
[See code here](https://github.com/yang70/sum_of_multiples/blob/master/lib/algo_2.rb)

The concept for my second attempt was to iterate through all numbers from one to the limit and add them to a running total if they were multiples of either of the two provided numbers (in the original problem domain that would be 3 and 5).  I used the modulo `%` operator to determine if a number was a multiple.

My goal was to remove much of the computational overhead of my first solution as well as using less memory as it is just storing one value.

Again, as you can see in the [benchmarks](https://github.com/yang70/sum_of_multiples/blob/master/benchmark.rb), this solution was consistently twice as fast as my first attempt when finding multiples of 3 or 5 up to 500,000.

## Attempt 3
[See code here](https://github.com/yang70/sum_of_multiples/blob/master/lib/algo_3.rb)

My third attempt at this problem was more of an experiment into [monkey-patching](https://en.wikipedia.org/wiki/Monkey_patch).  I used essentially the same algorithm as my second attempt, however I added the code as a method to the `Fixnum` class.  The number that the method would be called on would be the limit (for the original question that would be 1000) and it would take two arguments that would be the two multiples.

I'm not sure why, however this method seems to be ever so slightly faster (I ran this numerous times and it was pretty consistent) as seen in the [benchmarks](https://github.com/yang70/sum_of_multiples/blob/master/benchmark.rb).

## Conclusion
This exercise was a lot of fun and I'm pretty sure there is a more efficient / elegant solution to this problem that I'd love to see!  Shoot me a message if you have one! [matt@matthewgyang.com](mailto:matt@matthewgyang.com)
