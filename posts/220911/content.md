# My functional path

I began my journey in functional programming a while ago. For a couple of years, I’ve had numerous aha moments, discovering new concepts that have drastically changed my way of thinking and looking at code.

First, I realised the power of immutability and the importance of state management. Of course, you can happily change everything around using mutable variables, but eventually, you will pay the price. I learned this the hard way, and thanks to my exposure to functional programming, I finally understood where the pain comes from.

Next on the list were the higher-order and curried functions. I recall my confusion when I first encountered something like the function 
```js
sum = a => b => a + b
```
in JavaScript. What is this for? And most importantly, how could it ever be helpful? It took me a while to get used to the idea that functions can be passed around, used, and partially applied to help build a robust and flexible code.

Once I saw the power of functions, map, filter, and reduce came into the picture. I saw them and kind of understood them much earlier, but I was missing the power that comes with those simple methods. They introduced me to the streams and finally helped me realise what RxJava is all about. Thinking about the data in terms of flows was another eye-opener that changed my coding approach. I started being allergic to the for-loops and mapped whenever I could.

Composition over inheritance. I knew it early on from Effective Java, written by Joshua Bloch. I got it in the OOP context, as I thought, but looking at it from the functional perspective was another milestone in my coding career. As Brian Beckman said in one of his lectures Composition is THE way to control complexity. Currently, I believe it is the best approach if you want to build something that you will maintain in the future. Building small blocks that are simple, easy to verify, and mix helps me every day, as I understand the power of composability.

I was astonished once I finally understood what referential transparency and function purity could offer. Everything is so much simpler once you can entirely rely on your functions and be sure that if you call it twice with the same parameters, it will produce the same results. The composition ultimately becomes straightforward, with fewer unpleasant surprises. Leaving the side effects to the edges and coding as much as I can without it is the goal I’m chasing now, and with every feature I release, I’m getting better at it.

Now I’m discovering the fascinating realm of Functors, Applicatives and Monads, but I barely grasped the surface of the topic. I'm starting to grasp the concept of computational context, but I see a long way ahead of me to understand and consciously utilise it fully. I know that Monad is just "the monoid in the category of endofunctors", but it will take a while before I understand something from this sentence. Once I know it, I will write a blog post about it. Let’s see if the Monad curse that says "Once you understand it, you will lose the ability to explain it" is true.

Functional programming has transformed my coding, and I’m glad I took the time to explore the origins of RxJava a few years ago. I know I started a lifelong journey. There is much to understand in programming by learning languages such as Haskell, Scala, Clojure, and beyond, with all their mathematical foundations, including Category theory and Type theory, among others. I’m glad I’m on this path.
