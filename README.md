# Merchant's Guide to the Galaxy

The Merchant's Guide to the Galaxy is a simple programming exercise that's often used to screen candidates for software developer positions or as an exercise in [code dojos](http://codingdojo.org/). Here's the [Problem Description](ProblemDescription.md).  

I wanted to use the exercise as a vehicle to illustrate several concepts pertaining to lightweight software development and delivery. 

I will now subject you to a painfully-verbose explanation of my rationale for approaching the exercise in the way I did. There's a lot of [dot-connecting](https://idioms.thefreedictionary.com/connect+the+dots) in the following explanation, because I've noticed most developers don't intuitively understand the reasons behind the practices some of us recommend. They say test-driven development is just Kent Beck's "opinion," or pair programming is just Ron Jeffries' "opinion," or adaptive development is just Jim Highsmith's "opinion," and, as everyone knows, all opinions are equal. The thing is, [some opinions are more equal than others](https://www.dictionary.com/browse/all-animals-are-equal--but-some-animals-are-more-equal-than-others). 

Or you could just [skip it](#getting-started). 

## Approach

I decided to work the exercise as if I were on a team developing microservices. Our team follows generally-accepted contemporary development practices. 

What does that mean to me? 

It means:

- The solution architecture is "given" - it will be a conventional cloud-based microservice. Most services transfer data in the form of JSON structures, so that's what we'll do, too. No, that isn't a premature design decision; it's adherence to the [principle of least astonishment](https://psychology.wikia.org/wiki/Principle_of_least_astonishment). It is what most authors of client apps would expect.
- A proper development environment includes, as a baseline, a version control system, development tools such as an IDE or editor; compilers, linkers, packaging tools, etc.; continuous integration support; unit testing support; static code analysis support; and automated deployment. Setting up this environment is the first step for a greenfield project like this. _Circa_ 2020, just typing code into an editor without having a proper deployment pipeline is not a professional approach; and the setup is no longer [SEP](https://en.wikipedia.org/wiki/Somebody_else%27s_problem), as it was in the 20th century when development teams were not responsible for environments, operations, and production support. Today, a [product team](https://uxplanet.org/10-things-that-characterize-a-modern-product-team-9fb86d2956f0) is responsible for the customer experience using their product. That responsibility encompasses more than "delivery" alone.
- Collaborative work generally yields the best results. [Mob Programming](https://mobprogramming.org/) is the most highly collaborative working style for software development that has been defined as of this writing. My team comprises one person, so it will be a mob of one; but if it were four or six or 12 people, we would still carry out just one task at a time, working collaboratively. In other words, we set a [work-in-process (WIP) limit](https://kanbanize.com/kanban-resources/getting-started/what-is-wip/) of one. 
- With a WIP limit of one and no cross-team dependencies, it's easy to use a simple branching strategy known as [trunk-based development](https://trunkbaseddevelopment.com/). The advantages include confidence that the team can release code to production at any time from trunk (the main or master branch), and there are no merge issues. When teams struggle with this strategy, it usually means they are doing certain other things in ways that create challenges for them, such as having too much work in process (WIP) and separating each piece of work into a separate branch (such as a [feature branch](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow) or [task branch](https://stackoverflow.com/questions/22098634/how-to-do-a-branch-per-task-strategy-with-git) or similar, especially combined with non-collaborative, individual work), defining their individual work items to be complicated or large, keeping unfinished changes in various long-lived branches, or not using [feature toggles](https://www.martinfowler.com/articles/feature-toggles.html) to control the availability of incomplete features to users. The reason is _never_ that trunk-based development "doesn't work" or "won't work here." 
- Development work follows the _test-first_ approach to [test-driven development](https://en.wikipedia.org/wiki/Test-driven_development) (TDD). We'll use a mixture of [classic and mockist](https://paulbellamy.com/2018/12/testing-with-intent-5-two-schools-of-tdd) TDD, as many experienced practitioners do. We'll start with an _outside-in_ approach using the mockist style (or London School) of TDD, beginning at the acceptance test level. That will give us an end-to-end picture of the solution, and a set of test cases we can think of as a target to aim for. Then we'll flesh out the solution following an _inside_out_ approach, using classic style (or Detroit School) of TDD to support [emergent design](https://en.wikipedia.org/wiki/Emergent_Design) and [iterative development with incremental delivery](https://en.wikipedia.org/wiki/Iterative_and_incremental_development). These techniques are so poorly understood across the industry that nearly any information you might find in an Internet search will be at least slightly off-target; but don't worry: They remain practical and useful, even when our understanding diverges from that of a technique's inventors. 
- We'll decompose our work into [vertical slices](https://en.wikipedia.org/wiki/Vertical_slice) of functionality. That helps us be sure whatever we release will be of at least _some_ use to our customers. It also helps us deliver _something_ rather than the usual _nothing_ early in the project. Given the choice, many customers prefer [_something_ over _nothing_](https://pragprog.com/book/rjnsd/the-nature-of-software-development).
- We'll define our work in terms of _stories_, derived from the idea of [User Stories](https://en.wikipedia.org/wiki/User_story). A _story_ is a lightweight description of a piece of software functionality as it is experienced by its _user_ (human or machine). It includes (a) who needs the functionality, (b) what value the functionality provides to the "who," (c) a brief description of the functionality, and (d) the "acceptance criteria," which tell us when we're finished with the story. Formats vary widely. The idea is based on the concept of the _three C's_ - [card, conversation, confirmation](https://ronjeffries.com/xprog/articles/expcardconversationconfirmation/). Thus, it is not a "requirements specification" but rather a placeholder for a conversation. Many conversations ensue when we work collaboratively with customers. 
- Notwithstanding the fact we're working in _stories_, the first thing we do won't be one. Instead, we will verify that we have set up the development and deployment tooling correctly. Often, when setting things up for the first time for a greenfield development project, the first "story" isn't a _story_ at ll, but a demonstration that a message can flow from the UI or API all the way through the solution architecture and back again. 

## Process 

Long ago, I wrote a series of blog posts intended to guide a semi-technical person through the process of setting up a [CI/CD Pipeline](https://semaphoreci.com/blog/cicd-pipeline) in the cloud. For this exercise, I'll use my own posts as a guide. Here they are:

- [Part One](https://www.leadingagile.com/2018/06/build-a-ci-cd-pipeline-in-the-cloud-part-one/)
- [Part Two](https://www.leadingagile.com/2018/06/build-a-ci-cd-pipeline-in-the-cloud-part-two/)
- [Part Three](https://www.leadingagile.com/2018/06/build-a-ci-cd-pipeline-in-the-cloud-part-three/)
- [Part Four](https://www.leadingagile.com/2018/06/build-a-ci-cd-pipeline-in-the-cloud-part-four/)

Most of the material is still valid, but not everything. Since writing those posts, I've learned that using [Semantic Versioning](https://semver.org/) for APIs isn't necessarily a good approach. Smarter people than I say it's better to create wholly-new APIs when things change. I'll follow their advice in this exercise. If you're following along with the blog posts, you may notice that difference. 

This project will use the [Ruby](https://www.ruby-lang.org/en/) language, not because it's necessarily "better" than other languages, but because it's relatively easy to set up and use. It doesn't require the same amount of scaffolding and tooling as languages like, for instance, Java or C#. I don't want to get bogged down with that sort of thing in this project. 

I mentioned that I want to take an _outside-in_ approach using mockist TDD at the acceptance test level to get started. That's another difference between this project and the earlier blog posts. I'll include [Cucumber](https://github.com/cucumber/cucumber-ruby) in the project setup for this purpose. Many people argue against using Cucumber for testing APIs, as the [Gherkin](http://docs.behat.org/en/v2.5/guides/1.gherkin.html) language is intended to facilitate understanding between business stakeholders and developers. Besides that, many organizations have found a large library of Gherkin scenarios to be hard to maintain, and they've abandoned it. 

Here we're writing a toy or sample application based on a technical screening exercise. One of the goals of the project is to illustrate several "good practices" for project setup and development work flow. With that in mind, I think Gherkin makes for a convenient and readable way to express acceptance tests that we can use to describe the behavior of the finished solution. This will be our "target" for development. It's true that one could dispense with the Cucumber layer and just use [Rspec](https://rspec.info/) to achieve the same result, but it would be less readable for interested parties who cannot read code. 

## Design 

The solution _architecture_ is "given," but the solution _design_ is not. We plan to define high-level acceptance tests guided by mockist-style TDD to lay out the general structure of the app, and then flesh out the detailed design incrementally using classic-style TDD. 

From the [Problem Description](ProblemDescription.md), we see the solution has to support a couple of general areas of functionality: 

- processing and responding to messages via an API; and 
- converting galactic numbers into decimal numbers representing the value of goods.

**Note:** The documentation doesn't mention "API." Why are we calling for one? Because we want our design to adhere to the design principle, [separation of concerns](https://en.wikipedia.org/wiki/Separation_of_concerns). Responding to messages and calculating the prices of goods are the "business functionality" of the solution. Input/output is not. Any number of different clients may be written to interact with the service, from command line programs to webapps to mobile apps to you-name-it. All of that is outside the scope of this project. 

The message processing functionality comprises two parts: 

- accepting messages that provide the value of goods, for later reference; and 
- responding to queries about the cost of various shipments of goods. 

Just to be a little more realistic (for a loose definition of "realistic"), we'll add a database to the solution. There isn't one in the setup documented in the blog posts. The problem description states the solution must be able to accept messages that define the prices of goods, like this: 

- glob is I 
- prok is V 
- pish is X 
- tegj is L 

Based on the way the problem is described, it looks as if the solution must accept price values at runtime. That implies they can't be hard-coded either in the code or in a configuration file. So, we need someplace to store the values once they've been supplied by the client. (This was probably not the author's intent, but they wrote it they way they wrote it, so here we are.)

The problem description also specifies messages like these: 

- glob glob Silver is 34 Credits
- glob prok Gold is 57800 Credits
- pish pish Iron is 3910 Credits

These messages don't result in a response payload. We might interpret them as probes to verify the system is operational and not misbehaving in an obvious way, such as reporting incorrect prices. There are no instructions to the contrary, so that's the assumption we will make. 

Messages that end with a question mark look as if they require a response: 

- how much is pish tegj glob glob ?
- how many Credits is glob prok Silver ?
- how many Credits is glob prok Gold ?
- how many Credits is glob prok Iron ?
- how much wood could a woodchuck chuck if a woodchuck could chuck wood ?

So, in the absence of clarifying information, our message-handling standard will be that any input message that ends with a question mark will result in a response payload, and other messages will either succeed silently or throw an exception. 

We also intend to begin development by verifying that we've set up the development and deployment environment correctly. We'll build an _echo_ transaction to do that. 

## Observability and Monitoring 

_Observability_ has become an important feature of microservice solutions. The complexity of a live production environment running in an elastic cloud infrastructure makes it impossible to test all possible scenarios exhaustively before deploying to production. Software product teams need a way to understand what's happening with their solution in the live production environment, providing sufficient fine-grained data to enable them to drill down into the problem and solve it quickly. Beyond that, what the team learns from these events should be folded back into the solution to improve it. 

As this exercise is based on "free" cloud-based tools, we have no practical way to demonstrate real production monitoring using observability-based tools like [Wavefront](https://www.wavefront.com/) or [Honeycomb](https://www.honeycomb.io/). In the interest of "realism," we'll write API calls to Honeycomb [as documented here](https://docs.honeycomb.io/api/events/) to register _events_. We won't bother with other Honeycomb feartures in this exercise. We'll mock the Honeycomb API calls and return status 200 with an empty response body in all cases. We just want to show how one might add instrumentation to an app, as that is rapidly becoming a baseline requirement for professional application development. 

This topic is not covered in the blog posts mentioned above.

## Initial Acceptance Tests

Our first set of acceptance tests (which we will express as Cucumber features) will include: 

- echo transaction - must "pass" before we proceed with any "user" stories;
- responding to API calls that supply the price of goods - must "fail" for the right reason; and 
- responding to API calls that query the system for calculated prices - must "fail" for the right reason.

As development progresses, we may add, modify, or remove acceptance test cases to reflect the emerging solution design. Ultimately, when all the acceptance tests "pass", we'll be _done_. 

## Getting Started 

On any "real" project, the team(s) will use some sort of process framework and some sort of project management tool. We're interested in taking an iterative/incremental approach to this project. That implies the team and its primary stakeholder will agree on a short list of key things we believe the solution will have to do. All of that is subject to change as we explore the solution space, of course, but we need a starting point and a general direction for development. 

This sort of list might be called: 

- Product Backlog (Scrum) 
- Master Story List (Extreme Programming)
- Work Queue (Kanban) 
- Work Breakdown Structure (traditional methods)
- Whatever-you-want-to-call-it (your own method)

The items in the list might be called: 

- Backlog Items (Scrum) 
- User Stories (Extreme Programming)
- Tickets (Kanban) 
- Work Packages (traditional methods)
- Whatever-you-want-to-call-them (your own method)

In substance, this is not a list of hard-and-fast "requirements," as we are not doing [big design up front (BDUF)](http://wiki.c2.com/?BigDesignUpFront). When we take an iterative/incremental approach, we use [rolling wave planning](https://project-management-knowledge.com/definitions/r/rolling-wave-planning/) or [multi-horizon planning](https://www.solutionsiq.com/learning/blog-post/planning-horizons-decision-making-within-agile-frameworks/). We'll elaborate each work item that we decide to deliver at the [last responsible moment](https://blog.codinghorror.com/the-last-responsible-moment/).

Numerous techniques and models are available to help us reach a decision about what functionality our solution ought to have and how to prioritize and sequence the delivery of that functionality. The details are out of scope here. Let's pretend we've used some of those techniques and models, and we've decided to proceed with this list: 

- Echo Message
- Number Conversion 
- Price Calculation 
- System Probes 

The Echo Transaction is first, so we will elaborate that item in more detail than the others initially. It's okay to leave the other three as one-liners to remind us that we have to pay attention to them eventually. 

**Note:** You may have noticed that we haven't completed the _Toolchain Setup_ and _Project Setup_ steps, listed below. We can't proceed with application development until those things are done. So, why didn't we do them before planning our initial list of work? The reason is that building the Echo Message functionality will _force_ or _cause_ those activities to be done. When using lightweight methods for iterative/incremental development, it's common to express the [Definition of Done](https://www.agilealliance.org/glossary/definition-of-done/#q=~(infinite~false~filters~(postType~(~'page~'post~'aa_book~'aa_event_session~'aa_experience_report~'aa_glossary~'aa_research_paper~'aa_video)~tags~(~'definition*20of*20done))~searchTerm~'~sort~false~sortDirection~'asc~page~1)) for each work item in such a way that many implementation details fall out naturally, rather than attempting to predict all the detailed work in advance and document it in our project management tool. That sort of activity is _overhead_; it isn't [value-add work](http://businessknowledgesource.com/manufacturing/what_is_valueadded_work_nonvalue_added_work_021690.html). It won't be possible to respond to the Echo Message unless the application architecture is complete. That's the whole point of the Echo Message. A natural consequence of our effort to implement the Echo Message will be to build out the application architecture. It's a case of [emergent architecture](https://scrumcrazy.wordpress.com/2018/09/28/an-introduction-to-agile-emergent-architecture-always-intentional/). People sometimes worry about emergent architecture, but I think that's because they conflate the architecture of the elastic cloud infrastructure that hosts microservices (risky to emerge within the scope of a single application development project) with the architecture of the application that runs on that infrastructure (not risky to emerge). We're talking about letting the application architecture emerge, not the underlying cloud infrastructure. 


## Echo Transaction Definition of Done 




## Toolchain Setup 

For this fresh, greenfield project, our team needs to set up a toolchain for development/test and CI/CD. After conferring with the rest of my colleagues on the team, here's what we decided on initially:

- Version Control System - Git 
- Version Control Service - Github (https://github.com)
- Development Environment - CodeAnywhere (https://codeanywhere.com)
- Continuous Integration - Travis CI (https://travis-ci.com)
- Static Code Analysis - Code Climate (https://codeclimate.com/oss/)
- Deployment, Production Ops - Heroku (https://www.heroku.com/home)

You're already looking at the Github repo, so there's no sense in walking through that setup. There's the usual Github housekeeping to do, like creating a .gitignore file and choosing a license. I'll assume you know how to do that.

The series of blog posts I mentioned earlier walks the reader through the setup steps for all these tools. Each online service also provides documentation, tutorials, and help for using their facilities. You might want to use different tools. For instance, many people prefer Circle CI to Travis CI. The specific tools you use aren't important for the purpose of this exercise. You might prefer to use an IDE on your local machine rather than CodeAnywhere. You might prefer to work in a different programming language. It's all good. I'm going to assume you can handle all that and move on. 

## Project Setup 

Let's organize our directory structure and install development tools for the project on our CodeAnywhere instance. (If you're working on a local instance you can do an equivalent setup according to your preferences.) The default CodeAnywhere configuration of an Ubuntu 16.04 instance for Ruby development gives us a practical starting point. Let's see where we are:

```shell 
ruby --version 
``` 

shows we have Ruby 2.5.1p57. Depending on when you do this, you might see a more recent version. It's good to check this, as sometimes cloud-based services have old releases of tools as their defaults, and we have to install more recent versions. This is fine for our purposes, and we don't need to do that. 

By default, CodeAnywhere puts us in directory ~/workspace. That's fine. We'll create the project root directory in that location. Let's create some subdirectories appropriate to the language and tools we'll be using. 
 
```shell 
mkdir galaxy
cd galaxy
mkdir app 
mkdir -p features/step_definitions 
mkdir -p features/support
mkdir spec 
```

In case some of that isn't familiar to you, here's the run-down:

- app - this is where production code lives 
- features - this is where Cucumber features and step definitions live 
- spec - this is where rspec tests live 




