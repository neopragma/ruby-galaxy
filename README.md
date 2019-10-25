# Merchant's Guide to the Galaxy

The Merchant's Guide to the Galaxy is a simple programming exercise that's often used to screen candidates for software developer positions. Here's the [Problem Description](ProblemDescription.md).  

## Approach

I decided to work the exercise as if I were on a team developing microservices. Our team follows generally-accepted contemporary development practices. 

What does that mean to me? 

It means:

- The solution architecture is "given" - it will be a conventional cloud-based microservice.
- A proper development environment includes, as a baseline, development tools such as an IDE or editor; compilers, linkers, packaging tools, etc.; continuous integration support; unit testing support; static code analysis support; and automated deployment. Setting up this environment is the first step for a greenfield project like this. 
- Collaborative work generally yields the best results. [Mob Programming](https://mobprogramming.org/) is the most highly collaborative working style for software development that has been defined as of this writing. My team comprises one person, so it will be a mob of one; but if it were four or six or 12 people, we would still carry out just one task at a time, working collaboratively. In other words, we set a [WIP limit](https://kanbanize.com/kanban-resources/getting-started/what-is-wip/) of one. 
- Development work follows the _test-first_ approach to [test-driven development](https://en.wikipedia.org/wiki/Test-driven_development) (TDD). We'll use a mixture of [classic and mockist](https://paulbellamy.com/2018/12/testing-with-intent-5-two-schools-of-tdd) TDD, as many experienced practitioners do. We'll start with an _outside-in_ approach using the mockist style (or London School) of TDD, beginning at the acceptance test level. That will give us an end-to-end picture of the solution, and a set of test cases we can think of as a target to aim for. Then we'll flesh out the solution following an _inside_out_ approach, using classic style (or Detroit School) of TDD for [emergent design](https://en.wikipedia.org/wiki/Emergent_Design). These techniques are so poorly understood across the industry that nearly any information you might find in an Internet search will be at least slightly off-target; but don't worry: It remains practical and useful. 



