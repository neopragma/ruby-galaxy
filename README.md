# Merchant's Guide to the Galaxy

The Merchant's Guide to the Galaxy is a simple programming exercise that's often used to screen candidates for software developer positions or as an exercise in [code dojos](http://codingdojo.org/). Here's the [Problem Description](ProblemDescription.md).  

## Another problem description

Most of the time, people fly through exercises like this quickly. They may wish to show their friends that they can type source code really fast. They may have to submit a solution to a prospective employer as part of a screening or interviewing process, and they have limited time. They may be participating in a code dojo or similar event that's only 60 to 90 minutes long. For one reason or another, people tend to go fast on these things.

Even when people aren't in a hurry, they usually gloss over most of the good practices they would normally use on the job. They may be more interested in learning a new programming language, or exploring an unfamiliar programming paradigm, or using the exercise to learn a new webapp framework. They aren't interested in treating the exercise as if it were real work. 

It seems to me all of this contributes to a general problem in the industry: Many software professionals are not in the habit of applying good practices. Good practices are rarely the focus of language tutorials, job screening challenges, or toy problems for practicing coding. Good practices for application software development and support are usually not included in university curricula, which focus instead on computer science or on management information systems. Many professionals currently in the work force were not taught these practices in school, and haven't experienced any particular career barriers as a result of not using them. With good reason, they are confident in their professional abilities, and look on unfamiliar techniques as questionable or, at best, unproven. 

## Opinions are like belly-buttons

Most developers don't intuitively understand the reasons behind the practices some of us recommend. They say test-driven development is just Kent Beck's "opinion," or pair programming is just Ron Jeffries' "opinion," or adaptive development is just Jim Highsmith's "opinion," or WIP limits are just Mike Burrows' "opinion," or the value of trunk-based development is just Paul Hammant's "opinion," or the value of extreme collaboration is just Woody Zuill's "opinion," or the advisability of applying robust testing skills at all times is just Michael Bolton's "opinion," or the idea that a product-aligned team should take responsibility for both development and production support is just Charity Majors' "opinion," or the value of frequent feedback from customers is just Ken Schwaber's "opinion," and, as everyone knows, all opinions are equal. 

The thing is, [some opinions are more equal than others](https://www.dictionary.com/browse/all-animals-are-equal--but-some-animals-are-more-equal-than-others). 

## Another goal for the exercise

What if we use the exercise as a vehicle to explore some of the ways in which an effective product-oriented, cross-functional software team works? Factors to look for could include: 

1. The scope of responsibility of the team is a "product" - not just _delivery_ but also _operations_ and _support_. 
1. The focus of team's interest is the _customer_, and therefore the health of the production environment, and not just throwing code over the wall as fast as possible.
1. Everyone in an organization has their role to play. It is not management's role to dictate technical practices to software teams. The teams already have the right people to make those decisions.
1. An effective team works _collaboratively_, with a preference for tighter methods of collaboration whenever possible. Swarming or mobbing is better than pairing; pairing is better than working solo; sitting together while working solo is better than sitting separately; communicating face-to-face is better than using email or other indirect methods.
1. A professional development environment includes support for continuous integration, static code analysis, automated testing, and automated deployment. It isn't just an IDE, and it isn't someone else's job to set up the rest of the pipeline.
1. Lower work-in-process (WIP) limits generally promote smoother _flow_. A focus on _finishing_ rather than _starting_ many tasks tends to result in earlier delivery and higher quality. 
1. To understand customer needs, collaboration with key stakeholders is necessary. The team can't afford to follow a written specification to the letter without questions.
1. Small work items defined in a lightweight fashion help the team understand its own delivery capacity, forecast future delivery, track progress, change priorities, and steer the design. Use the Three C's - card, conversation, confirmation. 
1. The first software design principle is the _principle of least astonishment_.
1. You Ain't Gonna Need It (YAGNI), except when you _are_ gonna need it. We know a proper solution will need things like security, accessibility, internationalization, observability, consistent exception handling, and several other attributes. YAGNI doesn't mean that we pretend we forgot all that.
1. An iterative and incremental approach facilitates customer feedback and the ability to adjust the plan and the solution design.
1. Incremental delivery of _vertical slices_ of functionality provides customers with meaningful interim results they can relate to, so they can understand the value delivered to date and help the Team CorporateCogsdapt the plan and the design.
1. Trunk-based development keeps the branching strategy as simple as possible, and helps the Team CorporateCogsvoid "merge hell."
1. It's generally a good idea to _begin with the end in mind_. In software development, this often translates into a _test-first_ approach to building code. 
1. Metrics that track delivery performance without any dependency on _how_ the work is done can help the team quantify the effects of any process improvement efforts they may make. Lean-based metrics have this characteristic.
1. It's more valuable for each team member to be available immediately _at the moment they are needed_ than it is for them to stay "busy" with low-priority work. 
1. When all team members are aware of one another's work, it helps everyone do things in a way that's easy to integrate and unlikely to cause re-work due to miscommunication.

Let's walk with a hypothetical team that uses all the good practices we know of as they implement a solution to this toy problem, and call out the times when the team exemplifies each of the factors listed above. We'll call them Team CustomersPet. For context, we'll also shadow a second team that works in a way many real-world teams operate. We'll call them Team CorporateCogs. We'll track the Cycle Time for each work item for the two teams.

## Assessment 

We can consider three areas of assessment for the two teams:

- Delivery performance as measured by Mean Cycle Time, Lead Time, and Process Cycle Efficiency (quantitative)
- Level of job satisfaction vs. stress or dissatisfaction experienced by team members (qualitative)
- Customer satisfaction with the solution and the team (qualitative)

<hr/>

## Getting Started: Analysis 

### Team CorporateCogs

**Activity 1.** The team submits the [Problem Description](ProblemDescription.md) to the corporate Enterprise Architecture group and waits for their response. 

_Good things:_ 

- (None)

**Activity 2.** Waiting. 

_Good things:_ 

- (None)

_Time so far:_


| Prev LT | Activity                            | Cycle Time | VA Time  | NVA Time | Cum VA | Cum NVA | PCE  | Lead Time |
| ------- | ----------------------------------- | ---------- | -------- | -------- | ------ | ------- | ---- | --------- |
| 000:00  | 1. Submit docs to arch team         | N/A        | 001:00   | 000:00   | 001:00 | 000:00  | 100% | 001:00    |
| 000:00  | 2. Wait for response from arch team | N/A        | 000:00   | 159:00   | 000:00 | 159:00  | 0.6% | 160:00    |

**Note:**

- Prev LT (Previous Lead Time) - cumulative LT as the team starts this activity. 
- Activity - one of the activities mentioned in the description just above the table. 
- Cycle Time - CT in hours:minutes consumed in the activity.
- VA Time (Value-Add Time) - time in hours:minutes during which value was added to the product. 
- NVA Time (Non-Value-Add Time) - time in hours:minutes consumed in overhead activity or process waste.
- Cum VA - cumulative VA up to this point.
- Cum NVA - cumulative NVA up to this point. 
- PCE (Process Cycle Efficiency) - percentage of Lead Time that was Value-Add Time, cumulative from the start of the project to the present moment. 
- Lead Time - cumulative time from the start of the project to the present moment. 

_Team feeling_ 

- Low engagement
- Low interest 
- Vague sense of impending doom awaiting the architecture that will be imposed on the team by the Enterprise Architecture group

_Customer satisfaction_ 

- Neutral and willing to suspend judgment, but the project already looks similar to past projects that did not yield good value


### Team CustomersPet

**Activity 1.** The team reviews the [Problem Description](ProblemDescription.md) together and in collaboration with the key stakeholder (may be called _Product Owner_ or _Customer_ or similar). 

_Good things:_

- Factor 4 - team works collaboratively (they analyzed the problem together)
- Factor 7 - collaboration with stakeholders (team worked directly with key stakeholders)

**Activity 2.** The team notices that the Problem Description lists several acceptance test cases, including these: 

- glob is I 
- prok is V 
- pish is X 
- tegj is L 

Taken literally, this means the numerical values of _glob_, _prok_, _pish_, and _tegj_ are undefined, and must be given values through input to the application, provided in some form not specified. But if the model for galactic numbers is the Roman system, then this would be tantamount to having variable values for symbols like L and X. They note that this would lead to unexpected behavior from the customer's point of view, as prices could not be calculated until the base values had been provided by a client of the system. It also creates possibly-unnecessary technical complication in the design for (a) persisting the values that are submitted, and (b) handling the cases when customers access the system before values have been assigned to the alien number-words. The team collaborates with the key stakeholder to clarify that the numerical values of the alien words are, in fact, predefined and will not change at runtime. This will enable a simpler design. 

_Good things:_

- Factor 2 - customer focus (team thought about how customers would be affected in production)
- Factor 4 - team works collaboratively (Team CorporateCogsnalyzed the problem together)
- Factor 7 - collaboration with stakeholders (team clarified the requirements)
- Factor 9 - principle of least astonishment (no missing prices at runtime)
- Factor 10 - YAGNI (solution will not need persistence)

**Activity 3.** The team discusses the implications of the Problem Description and the ways in which customers could interact with the solution. They reach a consensus to base the solution on microservices. 

They agree their service(s) will return results in the form of JSON documents; that application will be designed for _observability_, and that they will implement the solution using Ruby and Sinatra.

They agree to use Git for version control with Github as the server; CodeClimate for static code analysis and code coverage; TravisCI for continuous integration; and Heroku as the cloud provider for production. 

_Good things:_

- Factor 3 - team owns technical decisions (they did not request an architectural design from a separate group)
- Factor 4 - team works collaboratively (team reached consensus about architecture)
- Factor 9 - principle of least astonishment (JSON with microservices is typical)
- Factor 17 - cross-functional team members are aware of each other's work (team is capable of deciding on architecture)

_Time so far:_

| Prev LT | Activity                            | Cycle Time | VA Time  | NVA Time | Cum VA | Cum NVA | PCE  | Lead Time |
| ------- | ----------------------------------- | ---------- | -------- | -------- | ------ | ------- | ---- | --------- |
| 000:00  | 1. Team review                      | N/A        | 000:00   | 002:00   | 000:00 | 002:00  | 0.0% | 002:00    |
| 002:00  | 2. Clarification about numbers      | N/A        | 000:00   | 002:15   | 000:00 | 002:15  | 0.0% | 002:15    |
| 002:15  | 3. Initial tech decisions           | N/A        | 000:00   | 000:45   | 000:00 | 003:00  | 0.0% | 003:00    |

_Team feeling_ 

- High engagement 
- High interest 
- Anticipation of fun building out a cloud-based microservices solution 

_Customer satisfaction_ 

- High satisfaction resulting from direct collaboration with the team in understanding customer needs and clarifying requirements 

Team CorporateCogs has taken 160.0 hours to reach this point. Team CustomersPet has taken 3.0 hours to reach the equivalent point in their process. 

<hr/>

## Getting Started: Planning 

### Team CorporateCogs

**Activity 1.** Based on the Problem Description, the team elaborates a detailed Requirements Specification to guide their work. Team CorporateCogs is working solely from the written Problem Description, and is not collaborating with stakeholders. Therefore, they have taken the description of the test cases of the form "prok is V" literally, and they plan to implement the number values as input messages from a client. In addition, about half the information in the Requirements Specification is incorrect or incomplete (typical with this sort of process), but the team has no way of knowing that yet. 

_Good things:_ 

- (None)

**Activity 2.** Based primarily on the response from the Enterprise Architecture group, as well as information in the Problem Description, the team determines which specialized teams must be engaged to provide resources or work products for the project. They identify several dependencies on external teams:

- IT Administration Team, to create a Git repository for the project and user IDs for team members and the application to access network resources
- Continuous Integration Team, to set up the project on a CI server
- Infrastructure Engineering team, to create and provision development, test, and production servers and/or interface with a cloud service provider.
- Storage Management Team, to ensure persistent storage is available for the application's database
- database team, to define and create the database to store the numerical values of _glob_, _prok_, _pish_, and _tegj_. 
- API Team, to design the API for the new service(s).
- Testing Team, to perform end-to-end functional and regression testing and user acceptance testing for the project.
- Release Team, to perform final system testing and migrate the code to production.
- Security Team, to check for any potential security vulnerabilities in the solution as designed.

_Good things:_ 

- (None)

**Activity 3.** Based on the results of Activities 1 and 2, the team documents a detailed project plan in their project management tool, showing work packages and tasks with resource allocations, estimated timings, dependencies, risk assessment, and budget needs. 

_Good things:_ 

- (None)

_Time so far:_

| Prev LT | Activity                            | Cycle Time | VA Time  | NVA Time | Cum VA | Cum NVA | PCE   | Lead Time |
| ------- | ----------------------------------- | ---------- | -------- | -------- | ------ | ------- | ----- | --------- |
| 160:00  | 1. Requirements Specification       | N/A        | 080:00   | 000:00   | 081:00 | 159:00  | 30.0% | 241:00    |
| 241:00  | 2. Team Dependencies                | N/A        | 000:00   | 003:00   | 081:00 | 162:00  | 30.0% | 244:00    |
| 244:00  | 3. Project Planning                 | N/A        | 030:00   | 000:00   | 111:00 | 162:00  | 40.5% | 274:00    |

### Team CustomersPet

**Activity 1.** Working collaboratively with key stakeholders, the team determines the solution will have to handle the following general types of operations:

- A price request, exemplified by the test cases 
  - how much is pish tegj glob glob ?
  - how many Credits is glob prok Silver ?
  - how many Credits is glob prok Gold ?
  - how many Credits is glob prok Iron ?
  - how much wood could a woodchuck chuck if a woodchuck could chuck wood ?
- Price calculations - under the covers functionality, a separate concern from handling requests/responses
- System probe messages, exemplified by the test cases
  - glob glob Silver is 34 Credits
  - glob prok Gold is 57800 Credits
  - pish pish Iron is 3910 Credits
- An Echo transaction, to validate the application architecture is in place (not defined in the Problem Description)

The team interprets some of the test cases provided in the Problem Description as "probe messages" because they do not return a result. They seem to be in the nature of assertions, in that they will either be "true" or the transaction will error out. Team members debate whether they are necessary, and ultimately agree that they could provide a more meaningful way to check the health of the application in production than merely pinging the server. To help avoid [gray failures](https://blog.acolyer.org/2017/06/15/gray-failure-the-achilles-heel-of-cloud-scale-systems/) and to provide a slightly more robust way to monitor production operations than log aggregation, the team decides to implement these messages as "probes." The galactic merchant will probably not use these transactions. 

The team makes the technical decision to build _observability_ into the solution and to instrument the code to supply data to a tool for live production monitoring and problem resolution. This is because the nature of a dynamic, elastic cloud environment makes it impossible to test all possible scenarios prior to production release, and the team is responsible for operations as well as development. 

Based on the Problem Description and discussions with key stakeholders, it becomes clear there is just one _Persona_ to be concerned about: The galactic merchant. They agree not to spend more time on creating Personas for the solution. 

The team and key stakeholders carry out a [Feature Mapping](https://johnfergusonsmart.com/feature-mapping-a-simpler-path-from-stories-to-executable-acceptance-criteria/) exercise to gain a better understanding of how users will interact with the solution. 

The problem calls for very little complicated behavior, and the group feels there is no need to decompose the planned functionality to understand where to begin, or in what direction the design should go. So, they dispense with further formal planning methods. 

Key stakeholders agree that the relative value of the different pieces of functionality don't vary by much. The price request functionality is the main thing, and that has to be supported by the underlying price calculation logic. 

Technical team members recommend that the Echo transaction be implemented first, as a way to ensure the end-to-end solution architecture is sound, and is in place. Business stakeholders agree. 

Everyone agrees that the probe transactions can be the lowest-priority items for implementation. 

The team captures brief descriptions of the key functionality in the form of a list of options. This might be called a Product Backlog (Scrum), a Master Story List (Extreme Programming), a Work Queue (Kanban), a Work Breakdown Structure (traditional methods), or something else. In any case, it is not a requirements specification; it is a list of options that may be implemented at the discretion of key stakeholders, if and when they perceive there is value to be obtained from doing so.

The team asks key stakeholders to assign [relative value points](https://www.simula.no/sites/simula.no/files/publications/files/earnedbusinessvalue_0.pdf) to each of the main functional areas of the solution. This will give the team a way to track the value they deliver to customers as they incrementally deliver the solution. They allocate 1,000 value points as follows: 

| Price Request | Price Calculation | Probe Messages | Echo Transaction |
| ------------- | ----------------- | -------------- | ---------------- |
| 800           | 150               | 50             | 0

The rationale is that the Price Request functionality can work even if the underlying prices are hard-coded in an early solution increment, and that is the functionality the galactic merchant needs most. The Price Calculation will make the Price Request more accurate and reliable. The Probe Messages offer indirect value to customers, as they can help the team keep the solution up and running. The Echo Transaction doesn't offer any customer value, as far as the stakeholders are concerned. 

That means the _sequencing_ of the planned work differs from the _business value_ of the features: 

1. Echo Transaction - to be done first for technical reasons
2. Price Request - primary functionality of interest to galactic merchants
3. Price Calculation - improves the implementation and quality of the Price Request functionality
4. Probe Messages - useful for support, but not visible to customers; could be dropped if necessary

Pursuant to [rolling wave planning](https://www.brighthubpm.com/project-planning/48953-basics-of-rolling-wave-planning/) the team and key stakeholders collaboratively define more details pertaining to the Echo transaction story. In keeping with the principle of deferring decisions until the [last responsible moment](https://blog.codinghorror.com/the-last-responsible-moment/), they refrain from adding details to the remaining stories. 

Following the general guideline of [behavior-driven development](https://hiptest.com/behavior-driven-development/) and Steven Covey's 2nd habit of highly effective people, ["begin with the end in mind"](https://www.artofmanliness.com/articles/the-7-habits-begin-with-the-end-in-mind/), the team and key stakeholders collaboratively define a few sample scenarios for the Echo transaction. These will guide development of the solution. 

The purpose of the "check value" is to provide the client with some evidence that the back-end actually saw the request message and did _something_ with it (as opposed to _nothing_). Otherwise, it would be easy to spoof the Echo transaction and make it appear as if the service were working, when in fact it was not. 

```
Feature: Echo Transaction

Background:
  Given the application is available 

Scenario: Valid request message 
  When the client sends a valid Echo request with check value 5
  Then the resulting status code is 200 
  And the check value in the response is 6 

Scenario: Request message formatted incorrectly 
  When the client sends an invalid Echo request 
  Then the resulting status code is 500 
  And the response contains element "errorMessage" with value "Echo request message is formatted incorrectly"
  And the response contains element "sampleRequest" with value "/echo/5"

Scenario: Request message does not contain a check value 
  When the client sends an Echo request with no check value 
  Then the resulting status code is 500
  And the response contains element "errorMessage" with value "Echo request does not have a check value"
  And the response contains element "sampleRequest" with value "/echo/5"
```

_Good things:_ 

- Factor 1 - the team considers operations, production monitoring, and production support in their design approach.
- Factor 2 - the team considers Personas and user experiences in their design approach. 
- Factor 4 - the team works collaboratively with each other, each bringing unique specialized knowledge to the table.
- Factor 7 - the team works collaboratively with  key stakeholders to clearly define the problem and the desired solution. 
- Factor 11 - rolling wave planning with limited detail defined for work items that will be addressed in future are consistent with the iterative/incremental approach to development.
- Factor 14 - by defining example scenarios in Gherkin to describe the behavior of the Echo transaction, the team _begins with the end in mind_ before starting to write code. 
- Factor 17 - all team members are aware of each other's work, as they worked collaboratively up to this point.

_Time so far:_

| Prev LT | Activity                            | Cycle Time | VA Time  | NVA Time | Cum VA | Cum NVA | PCE  | Lead Time |
| ------- | ----------------------------------- | ---------- | -------- | -------- | ------ | ------- | ---- | --------- |
| 003:00  | 1. Initial planning                 | N/A        | 000:00   | 008:00   | 000:00 | 011:00  | 0.0% | 011:00    |

_Team feeling_ 

- High engagement 
- High interest 
- Satisfaction with initial results
- Anticipation of fun building out a cloud-based microservices solution 

_Customer satisfaction_ 

- High satisfaction resulting from direct collaboration with the team in understanding customer needs and clarifying requirements.
- High satisfaction with the results of the initial planning activities,.

Both teams are now ready to begin development. Team CorporateCogs took 274 hours to reach this point. Team CustomersPet took 11 hours to reach the equivalent point in their process. 

<hr/>







Text below is being revised. Ignore it.


<hr/>

The solution _architecture_ is "given," but the solution _design_ is not. We plan to define high-level acceptance tests guided by mockist-style TDD to lay out the general structure of the app, and then flesh out the detailed design incrementally using classic-style TDD. 

From the [Problem Description](ProblemDescription.md), we see the solution has to support a couple of general areas of functionality: 

- processing and responding to messages via an API; and 
- converting galactic numbers into decimal numbers representing the value of goods.

**Note:** The documentation doesn't mention "API." Why are we calling for one? Because we want our design to adhere to the design principle, [separation of concerns](https://en.wikipedia.org/wiki/Separation_of_concerns). Responding to messages and calculating the prices of goods are the "business functionality" of the solution. Input/output is not. Any number of different clients may be written to interact with the service, from command line programs to webapps to mobile apps to you-name-it. All of that is outside the scope of this project. 

The message processing functionality comprises two parts: 

- accepting messages that provide the value of goods, for later reference; and 
- responding to queries about the cost of various shipments of goods. 

Just to be a little more realistic (for a loose definition of "realistic"), we'll add a database to the solution. There isn't one in the setup documented in the blog posts. The problem description states the solution must be able to accept messages that define the values associated with "alien" words, like this: 

- glob is I 
- prok is V 
- pish is X 
- tegj is L 

Based on the way the problem is described, it looks as if the solution must accept value definitions at runtime. That implies they can't be hard-coded either in the code or in a configuration file. So, we need someplace to store the values once they've been supplied by the client. (This was probably not the author's intent, but they wrote it they way they wrote it, so here we are. Typically, when a prospective employer gives you a list of "test cases" in the context of a screening exercise, the expectation is that your solution can process those test cases exactly as provided.)

The problem description also specifies messages like these: 

- glob glob Silver is 34 Credits
- glob prok Gold is 57800 Credits
- pish pish Iron is 3910 Credits

These messages don't result in a response payload. We might interpret them as probes to verify the system is operational and not misbehaving in an obvious way, such as reporting incorrect prices. There are no instructions to the contrary, so that's the assumption we will make. Probes like these provide a deeper test of an application's health than just pinging the URL, so it's actually a good idea to include them. 

Messages that end with a question mark look as if they require a response: 

- how much is pish tegj glob glob ?
- how many Credits is glob prok Silver ?
- how many Credits is glob prok Gold ?
- how many Credits is glob prok Iron ?
- how much wood could a woodchuck chuck if a woodchuck could chuck wood ?

So, in the absence of clarifying information, our message-handling standard will be that any input message that ends with a question mark will result in a response payload, and other messages will either succeed and return an HTTP status 200 with no response payload, or return a 500 with a description of the error in the payload. 

We also intend to begin development by verifying that we've set up the development and deployment environment correctly. We'll build an _echo_ transaction to do that. 

## Observability and Monitoring 

_Observability_ has become an important feature of microservice solutions. The complexity of a live production environment running in an elastic cloud infrastructure makes it impossible to test all scenarios exhaustively before deploying to production. Software product teams need a way to understand what's happening with their solution in the live production environment, providing sufficient fine-grained data to enable them to drill down into a problem and solve it quickly. Beyond that, what the team learns from these events should be folded back into the solution to improve it. 

As this exercise is based on "free" cloud-based tools, we have no practical way to demonstrate real production monitoring using observability-based tools like [Wavefront](https://www.wavefront.com/) or [Honeycomb](https://www.honeycomb.io/). In the interest of "realism," we'll write API calls to Honeycomb [as documented here](https://docs.honeycomb.io/api/events/) to register _events_. We won't bother with other Honeycomb feartures in this exercise. We'll mock the Honeycomb API calls and return status 200 with an empty response body in all cases. We just want to show how one might add instrumentation to an app, as that is rapidly becoming a baseline requirement for professional application development. 

This topic is not covered in the blog posts mentioned above.

## Customer Focus 

One characteristic of a product team is that their primary concern is the _experience of the customers who use their system_. This contrasts with a traditional software development team, whose primary concern has been the _delivery_ of requested functionality to production, in the same sense as an unwanted baby is delivered to the steps of an orphanage so that someone else can raise it. 

We've interpreted the problem description to call for API calls that associate values with "alien" words, like 

- prok is V 

That means the values of the words are not predefined. An implication for the customer experience is that they cannot use the application until a client has defined the value of each word. That implies we need a persistent data store to save the values when clients send them. 

One of the realities of a robust cloud-based microservices application is that the server instances on which it runs will come and go, for example using the [phoenix server](https://www.thoughtworks.com/insights/blog/moving-to-phoenix-server-pattern-introduction) strategy, while the application is expected to remain available to customers all the time. If our data store is destroyed each time a server instance is destroyed, we will lose the associations between the "alien" words and their numerical values and the customer experience will be unpleasant. It will appear as if the application sometimes works and sometimes doesn't. 

To provide a suitable customer experience, we need a persistent data store that remains valid as server instances are destroyed and re-created. We also need to provide reasonable behaviors for cases when a customer tries to use the application and the values have not yet been defined. (The problem description creates the need for all this thrashing, when I suspect the authors really intended to have static definitions for the values; but they didn't write it that way.

## Persistence 

Unlike a traditional "monolithic" application, a cloud-based microservices application does not define its own database instances. Instead, it's preferable to use the data storage facilities offered by the cloud service provider who hosts the application. That way, we know persistent data will survive across server instances that may be destroyed and re-created at any time by the infrastructure. We aren't actually going to define an "elastic" server configuration for this particular exercise, but we will structure the application so that it could support such a configuration. 

Each cloud service provider has unique data storage offerings. We plan to deploy this demo app on Heroku, so we will use a Heroku data offering known as [Heroku Postgres](https://devcenter.heroku.com/articles/heroku-postgresql). We will defer the design and configuration of the data store until the last responsible moment, as usual.

## Initial Acceptance Tests

Our first set of acceptance tests (which we will express as Cucumber features) will include: 

- echo transaction - must "pass" before we proceed with any "user" stories;
- responding to API calls that supply the price of goods - must "fail" for the right reason; and 
- responding to API calls that query the system for calculated prices - must "fail" for the right reason.

As development progresses, we may add, modify, or remove acceptance test cases to reflect the emerging solution design. Ultimately, when all the acceptance tests "pass", we'll be _done_. 

## Getting Started 

On any "real" project, the team(s) will use some sort of process framework and some sort of project management tool. We're interested in taking an iterative/incremental approach to this project. That implies the Team CorporateCogsnd its primary stakeholder will agree on a short list of key things we believe the solution will have to do. All of that is subject to change as we explore the solution space, of course, but we need a starting point and a general direction for development. 

This sort of list might be called: 

- Product Backlog ([Scrum](https://scrumguides.org/)) 
- Master Story List ([Extreme Programming](http://www.extremeprogramming.org/))
- Work Queue ([Kanban](https://resources.collab.net/agile-101/what-is-kanban)) 
- Work Breakdown Structure ([traditional methods](https://www.workbreakdownstructure.com/))
- Whatever-you-want-to-call-it (your own method)

I'm going to call it "backlog," as that is a popular term in the industry today. 

The items in the list might be called: 

- Backlog Items ([Scrum](https://scrumguides.org/)) 
- User Stories ([Extreme Programming](http://www.extremeprogramming.org/))
- Tickets ([Kanban](https://resources.collab.net/agile-101/what-is-kanban)) 
- Work Packages ([traditional methods](https://www.workbreakdownstructure.com/))
- Whatever-you-want-to-call-them (your own method)

I'm going to call them "work items," for lack of a better name.

Whatever we may call it, in substance this is not a list of hard-and-fast "requirements," as we are not doing [big design up front (BDUF)](http://wiki.c2.com/?BigDesignUpFront). When we take an iterative/incremental approach, we use [rolling wave planning](https://project-management-knowledge.com/definitions/r/rolling-wave-planning/) or [multi-horizon planning](https://www.solutionsiq.com/learning/blog-post/planning-horizons-decision-making-within-agile-frameworks/). We'll elaborate each work item that we decide to complete at the [last responsible moment](https://blog.codinghorror.com/the-last-responsible-moment/).

The iterative/incremental approach calls for work to be done iteratively, so that the Team CorporateCogsnd the stakeholders can see partial results, provide feedback to each other, make decisions about what to do next, and steer the work toward a meaningful outcome. The iterations might be called: 

- Sprints ([Scrum](https://scrumguides.org/)) 
- Iterations ([Extreme Programming](http://www.extremeprogramming.org/))
- Development Cadence ([Kanban](https://resources.collab.net/agile-101/what-is-kanban)) 
- Units of time - _week_, _fortnight_, _month_ ([traditional methods](https://www.workbreakdownstructure.com/))
- Whatever-you-want-to-call-them (your own method)

I'm going to call them "iterations," as that's the most general term.

Numerous techniques and models are available to help us reach a decision about what functionality our solution ought to have and how to prioritize and sequence the delivery of that functionality. The details are out of scope here. Let's pretend we've used some of those techniques and models, and we've decided to proceed with this list: 

- Echo Message
- Number Conversion 
- Price Calculation 
- System Probes 

The Echo Transaction is first, so we will elaborate that item in more detail than the others initially. It's okay to leave the other three as one-liners to remind us that we have to pay attention to them eventually. 

**Note:** You may have noticed that we haven't completed the _Toolchain Setup_ and _Project Setup_ steps, listed below. We can't proceed with application development until those things are done. So, why didn't we do them before planning our initial list of work? The reason is that building the Echo Message functionality will _force_ or _cause_ those activities to be done. When using lightweight methods for iterative/incremental development, it's common to express the [Definition of Done](https://www.agilealliance.org/glossary/definition-of-done/#q=~(infinite~false~filters~(postType~(~'page~'post~'aa_book~'aa_event_session~'aa_experience_report~'aa_glossary~'aa_research_paper~'aa_video)~tags~(~'definition*20of*20done))~searchTerm~'~sort~false~sortDirection~'asc~page~1)) for each work item in such a way that many implementation details fall out naturally, rather than attempting to predict all the detailed work in advance and document it in our project management tool. That sort of activity is _overhead_; it isn't [value-add work](http://businessknowledgesource.com/manufacturing/what_is_valueadded_work_nonvalue_added_work_021690.html). It won't be possible to respond to the Echo Message unless the application architecture is complete. That's the whole point of the Echo Message. A natural consequence of our effort to implement the Echo Message will be to build out the application architecture. It's a case of [emergent architecture](https://scrumcrazy.wordpress.com/2018/09/28/an-introduction-to-agile-emergent-architecture-always-intentional/). People sometimes worry about emergent architecture, but I think that's because they conflate the architecture of the elastic cloud infrastructure that hosts microservices (risky to emerge within the scope of a single application development project) with the architecture of an application that runs on that infrastructure (not risky to emerge). We're talking about letting the application architecture emerge, not the underlying cloud infrastructure. 


## Work Item 1: Echo Transaction Definition of Done 

At this point, the team _pulls_ the first work item from the list, and the [Cycle Time](http://www.businessdictionary.com/definition/cycle-time.html) clock starts ticking. Cycle Time is the simplest and most meaningful metric for tracking a team's delivery capacity, and for informing _forecasting_ of a team's upcoming work. Cycle Time has the same meaning regardless of the kind of process a team uses, and it can be used across multiple teams and projects (unlike Velocity, for instance). Cycle Time is also less subject to "gaming" than other metrics that are often used for iterative/incremental development.

**Note:** I'm including timings for all the work in this write-up. The reason is that most people who have not worked in this way assume that doing things "right" will take considerably more time than doing things...well, however they _currently_ do things - typically, without much (if any) automation of routine, repetitive work such as functional checks, server provisioning, and code deployment, but with plenty of context-switching overhead and blocked work, bottlenecks caused by specialists working in silos, as well as misunderstandings and re-work caused by individuals working separately. I don't understand that logic, but...okay. Whatever. Timings included.

To demonstrate we've set up the application stack correctly, the Echo Transaction must show that

- the service returns the response defined for _echo_ 
- the response payload contains something that indicates application code saw and processed the _echo_ request 
- the service returns the correct error response when the _echo_ request is not formatted properly 

After a team discussion, we decide to pass a field containing an integer value on the Echo request, and expect the application to increment the value by one and return it in the response payload. That will satisfy the need to see evidence that the application did _something_ with the request. 

We also decide the error case will be indicated by an HTTP status of 500 and a message in the payload that reads, "Echo request message is formatted incorrectly," as well as an example of the correct format. 

We also decide the persistent data store will be created as a consequence of the first work item that pertains to storing the value of an "alien" word. There's no need to create "extra" work around the Echo Transaction for that purpose. So:

Out of scope: 

- evidence that there is a persistent data store somewhere in the universe 

The team has performed the following work:

- ensured all team members have a consistent understanding of the Echo Transaction
- determined what functionality is in scope and out of scope for this work item 
- specified a Definition of Done for the work item 

<hr/>

### Time check 

- If the team has worked in this way before: 30 minutes
- If the team has not worked in this way before: 1 hour

Cycle Time so far: 

- Best case: 00:30
- Worst case: 01:00

<hr/>

## Work Item 1: Toolchain Setup 

For this fresh, greenfield project, our team needs to set up a toolchain for development/test and CI/CD. After conferring with the rest of my colleagues on the team, here's what we decided on initially:

- Version Control System - Git 
- Version Control Service - Github (https://github.com)
- Development Environment - CodeAnywhere (https://codeanywhere.com)
- Continuous Integration - Travis CI (https://travis-ci.com)
- Static Code Analysis - Code Climate (https://codeclimate.com/oss/)
- Deployment, Production Ops - Heroku (https://www.heroku.com/home)

You're already looking at the Github repo, so there's no sense in walking through that setup. There's the usual Github housekeeping to do, like creating a .gitignore file and choosing a license. I'll assume you know how to do that.

The series of blog posts I mentioned earlier walks the reader through the setup steps for all these tools. Each online service also provides documentation, tutorials, and help for using their facilities. You might want to use different tools. For instance, many people prefer Circle CI to Travis CI. The specific tools you use aren't important for the purpose of this exercise. You might prefer to use an IDE on your local machine rather than CodeAnywhere. You might prefer to work in a different programming language. It's all good. I'm going to assume you can handle all that and move on. 

We have not created a persistent data store yet. That's because we decided it was out of scope for the Echo Transaction item.

<hr/>

### Time check 

_Create project on Github_

- If someone on the team has done this before: 5 minutes 
- If no one on the team has done this before: 15 minutes 

_Create project and container on CodeAnywhere_

- If someone on the team has done this before: 10 minutes 
- If no one on the team has done this before: 30 minutes 

_Sign up for Travis CI (not including config file)_

- If someone on the team has done this before: 5 minutes 
- If no one on the team has done this before: 10 minutes 

_Sign up for Code Climate_ 

- If someone on the team has done this before: 5 minutes 
- If no one on the team has done this before: 10 minutes 

_Sign up for Heroku (not including config file)_

- If someone on the team has done this before: 5 minutes 
- If no one on the team has done this before: 10 minutes 

Cycle Time so far: 

- Best case: 00:30 + 00:30 = 01:00
- Worst case: 01:00 + 01:15 = 02:15

<hr/>

## Work Item 1: Project Setup 

Let's organize our directory structure and install development tools for the project on our CodeAnywhere instance. (If you're working on a local instance you can do an equivalent setup according to your preferences.) The default CodeAnywhere configuration of an Ubuntu 16.04 instance for Ruby development gives us a practical starting point. Let's see where we are. 

The command

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

<hr/>

### Time check

- 5 minutes 

Cycle Time so far: 

- Best case: 01:00 + 00:05 = 01:05
- Worst case: 02:15 + 00:05 = 02:20

<hr/>

## Work Item 1: Initial Gherkin Scenarios for Echo Transaction 

Previously, I mentioned we're going to take an _outside-in_ TDD approach initially, starting at the "acceptance test" level. We're starting that now. Based on the team's discussion of the Echo Transaction, we decide to start with these cases: 

```
Feature: Echo Transaction

Background:
  Given the application is available 

Scenario: Valid request message 
  When the client sends a valid Echo request with check value 5
  Then the resulting status code is 200 
  And the check value in the response is 6 

Scenario: Request message formatted incorrectly 
  When the client sends an invalid Echo request 
  Then the resulting status code is 500 
  And the response contains element "errorMessage" with value "Echo request message is formatted incorrectly"
  And the response contains element "sampleRequest" with value "/echo/5"

Scenario: Request message does not contain a check value 
  When the client sends an Echo request with no check value 
  Then the resulting status code is 500
  And the response contains element "errorMessage" with value "Echo request does not have a check value"
  And the response contains element "sampleRequest" with value "/echo/5"
```

We create a file under galaxy/features named echo.feature, and add the text above to the file. 

We're using _bundler_ for dependency management, so we need to create a file named Gemfile in the project root directory and specify the Ruby Gems we will need for the project. It will look something like this:

```
source 'http://rubygems.org'

gem 'sinatra', '1.4.8'
gem 'thin'
gem 'json'

group :test do
  gem 'cucumber'
  gem 'rspec'
  gem 'rest-client'
end
```

In case some of that is unfamiliar to you, here's a summary:

- sinatra - a lightweight webapp framework suitable for RESTful APIs 
- thin - a lightweight web server
- json - converts between Ruby hash objects and JSON documents 
- cucumber - a BDD-style tool for testing UIs and APIs 
- rspec - a BDD-style unit testing tool for Ruby 
- rest-client - helper methods for interacting with a RESTful service 
- rake - a Ruby make and build utility

To download and install the dependencies, we use:

```shell 
bundle install --path vendor/bundle
```

That command will download and install a number of Ruby Gems into [current directory]/vendor/bundle.

With that in place, we can run our Cukes and see if they fail for the right reason, which is the goal of this task. At this point in the project, we have no Cucumber steps defined. We expect Cucumber to report that it can't find step definitions that match the text in our feature file, and to suggest possible implementations. 

In the project root directory, run:

```shell 
bundle exec cucumber 
```

Here's a subset of the output I got from that command when I was testing this documentation: 

```shell 
3 scenarios (3 undefined)
14 steps (14 undefined)
0m0.024s

You can implement step definitions for undefined steps with these snippets:

Given("the application is available") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("the client sends a valid Echo request with check value {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the resulting status code is {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the check value in the response is {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("the client sends an invalid Echo request") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the response contains element {string} with value {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("the client sends an Echo request with no check value") do
  pending # Write code here that turns the phrase above into concrete actions
end
```

This is where we need to be just now. 

<hr/>

### Time check 

_Create the echo.feature file with initial scenarios_

- If someone on the team has done this before: 10 minutes 
- If no one on the team has done this before: 30 minutes 

_Create the Gemfile file specifying the dependencies for Cucumber_ 

- If someone on the team has done this before: 5 minutes 
- If no one on the team has done this before: 15 minutes 

Cycle Time so far: 

- Best case: 01:05 + 00:15 = 01:20 
- Worst case: 02:20 + 00:45 = 03:05 

<hr/>

## Work Item 1: Echo - Implement "Given the application is available" 

We're still in _outside-in_ mode at this point. We're going to realize the feature step, "Given the application is available." This will force us...well, _help us_...to start setting up the development and deployment toolchain. That's because there's no other way to make it happen. 

So, we'll start coding our service application. We want to separate concerns, so instead of dumping code into a single source file, we'll begin in the right way by separating the concerns of 

- accepting RESTful calls; and
- processing request messages and formatting responses.

To accept RESTful calls, we create the file app/galaxy.rb and write therein the rudiments of a nascent Sinatra app:

```
require 'sinatra'
require 'thin'
require 'json'
require_relative "./handler"
 
get '/' do 
  Handler.new.default.to_json
end
```

To process requests and format responses, we create the file app/handler.rb and code the behavior for the default URI path. For now, we'll create a response document with the name of the service and a brief description. 

```
class Handler 
  def default 
    { 
      "service" => "galaxy",
      "description" => "Merchant's Guide to the Galaxy implementation"
    }
  end
end 
```

We'll be using _rackup_ to start the server in production, so let's use it to start the server in the development environment as well, for consistency. Here's our _config.ru_ file, located in the project root directory:

```
require './app/galaxy'
run Sinatra::Application
```

Now we'll run _rackup_ via _bundler_ and specify IP address 0.0.0.0, which is what CodeAnywhere and Heroku will expect, and port 3000, which is what CodeAnywhere expects according to the container documentation that was generated when we created the CodeAnywhere container. We'll leave it running in the background so we can enter more commands in the same console. 

```shell 
bundle exec rackup -o "0.0.0.0" -p 3000 &
```

When I tried this, it reported that the _thin_ server was running and listening on port 3000:

```
Thin web server (v1.7.2 codename Bachmanity)
Maximum connections set to 1024
Listening on 0.0.0.0:3000, CTRL+C to stop
```

Before checking the default URI, let's install package _jq_, which formats JSON text for readability. It isn't included in CodeAnywhere's default Ubuntu/Ruby setup. 

```shell 
sudo apt install jq
```

Now we'll use _curl_ to do a quick manual check from the command line. The URL was provided in the CodeAnywhere documentation that was generated when we created the container. Yours will differ. 


```shell 
curl -s https://galaxy-davenicolette339440.codeanyapp.com | jq
```

The response looks like what we were hoping for at this point:

```
38.128.66.69 - - [26/Oct/2019:11:39:31 -0400] "GET / HTTP/1.1" 200 82 0.0088
{
  "service": "galaxy",
  "description": "Merchant's Guide to the Galaxy implementation"
}
```

Success!

Or not...?

Remember our customer focus? That makes us a bit paranoid. In my case, I ran the same curl command from my Mac laptop. It returned exactly the same result. That gave me some assurance that I wasn't seeing a false positive in the CodeAnywhere container, as the server is running in the same instance as the command line console. Once we complete the setup, we'll be deploying to Heroku, but for the moment there's the possibility of a false positive with this sort of quick check. 

<hr/>

#### Time check 

_Implement default behavior in development environment_ 

- If someone on the team has done this before: 1 hour 
- If no one on the team has done this before: 3 hours

Cycle Time so far: 

- Best case: 01:20 + 01:00 = 02:20
- Worst case: 03:05 + 03:00 = 06:05 

<hr/>

#### Continuing with: Echo - Implement "Given the application is available"

Now let's use what we learned from _curl_ to write an appropriate Cucumber step definition to verify the service is available. 

When we ran Cucumber, it suggested this: 

```ruby
Given("the application is available") do
  pending # Write code here that turns the phrase above into concrete actions
end
``` 

"Application is available" will mean that when we access the API with path / we receive a JSON document containing an element _service_ with value _galaxy_. So our expectation could look like this: 

```ruby 
expect(JSON.parse(response)['service'])
    .to eq('galaxy')
```

Of course, we won't execute _curl_ from inside our step definition. We'll use the _rest-client_ gem instead. 

```ruby
RestClient.get "https://galaxy-davenicolette339440.codeanyapp.com"
``` 

Putting that much together, we have the following code, which we save in a file named features/step_definitions/echo_steps.rb.

```ruby
Given("the application is available") do
    response = RestClient.get "https://galaxy-davenicolette339440.codeanyapp.com"
    expect(JSON.parse(response)['service'])
    .to eq('galaxy')
end
```

Clearly, this isn't quite right. We don't want to hard-code a URL here. In production, the URL will be provided in an environment variable. We'll want to do the same in the development environment. But this is sufficient to let us try the Cuke and see if we have any other basic errors, before adding more logic. 

```shell 
bundle exec cucumber 
```

The output is (in part): 

```
Feature: Echo Transaction

  Background:                          # features/echo.feature:3
    Given the application is available # features/step_definitions/echo_steps.rb:1
      uninitialized constant RestClient (NameError)
      ./features/step_definitions/echo_steps.rb:2:in `"the application is available"'
      features/echo.feature:4:in `Given the application is available'
```

So, we're getting some help from our tools. In Ruby, the error "uninitialized constant [class name]" means the application can't find a class named [class name]. We haven't told Cucumber where to find the class, RestClient. We fix it by adding a _require_ statement. Cucumber will look in a specific place for _require_ statements that apply to all the Cukes: features/support/env.rb. So, we fix the problem by creating that file with the following contents: 

```ruby 
require 'json' 
require 'rspec'
require 'rest-client'
```

The _json_ and _rspec_ gems have nothing to do with this particular problem, but we know we're using those gems so we go ahead and include _require_ statements for them. Now when we run 

```shell 
bundle exec cucumber 
```

we get

```
Feature: Echo Transaction

38.128.66.69 - - [27/Oct/2019:02:19:27 -0400] "GET / HTTP/1.1" 200 82 0.0024
  Background:                          # features/echo.feature:3
    Given the application is available # features/step_definitions/echo_steps.rb:1
```

This tells us we're on the right track with this step definition. As long as the _thin_ server is running and we access the correct URL, the step "works." Now let's remove the hard-coded URL and use an environment variable instead. 

As a first step, the team decides to type the _export_ statement in the command line console. This will have to be done in a more automatic way eventually. For now, we want to be sure we've coded the environment variable and associated Ruby code correctly. 

```shell 
export GALAXY_URL="https://galaxy-davenicolette339440.codeanyapp.com"
``` 

And in features/step_definitions/echo_steps.rb: 

```ruby 
Given("the application is available") do
    response = RestClient.get "#{ENV['GALAXY_URL']}/"
    expect(JSON.parse(response)['service'])
    .to eq('galaxy')
end
```

We run the Cukes again, and the output is identical to the hard-coded version. So, we know we can use an environment variable to provide the URL. But we haven't set things up in a repeatable or automated way. 

For now, we'll code a few steps in a shell script and run the Cukes that way. As we learn more about the environment, we may be able to improve on that implementation. Here's a script that 

- sets the environment variable GALAXY_URL; 
- starts the _thin_ server; and
- runs the Cukes.

We'll call it runcukes.sh.

```shell 
export GALAXY_URL="https://galaxy-davenicolette339440.codeanyapp.com"
bundle exec rackup -o "0.0.0.0" -p 3000 &
bundle exec cucumber
``` 

Let's make it executable: 

```shell 
chmod +x runcukes.sh 
``` 

and try it out:

```shell 
./runcukes.sh 
``` 

Okay, not too bad. One small problem: 

```
Thin web server (v1.7.2 codename Bachmanity)
Maximum connections set to 1024
Listening on 0.0.0.0:3000, CTRL+C to stop
bundler: failed to load command: rackup (/home/cabox/workspace/galaxy/vendor/bundle/ruby/2.5.0/bin/rackup)
RuntimeError: no acceptor (port is in use or requires root privileges)
  /home/cabox/workspace/galaxy/vendor/bundle/ruby/2.5.0/gems/eventmachine-1.2.7/lib/eventmachine.rb:531:in `start_tcp_server'
``` 

The server is still running from before. We need to make the script [idempotent](https://en.wikipedia.org/wiki/Idempotence). Yes, I knew that was going to happen, but I wanted an excuse to introduce the topic of idempotence. It's pretty important for scripts that do configuration or provisioning in a dynamic environment. It means if an operation is supposed to happen exactly once, then executing that operation multiple times the result will only happen once. Let's use this tiny, minor example to illustrate. 

In the runcukes.sh script, we want the server to start exactly once. We might want to overwrite the value of the environment variable, so that operation needn't be idempotent in this context. We don't have to do anything special for the _bundle exec cucumber_ step. 

We can achieve idempotence by checking whether the server is already running, and only attempting to start it if it isn't running. The team decides a quick-and-dirty solution will suffice for now, as we know this isn't the end of the task of building out the toolchain. If the URL returns an HTTP 200 status code, we'll assume the server is operational and we won't attempt to start it. Otherwise, we'll start it. 

```shell 
export GALAXY_URL="https://galaxy-davenicolette339440.codeanyapp.com"
test $(curl --write-out %{http_code} --silent --head --output /dev/null "$GALAXY_URL" | grep "200") \
    || bundle exec rackup -o "0.0.0.0" -p 3000 &
bundle exec cucumber
```

The CI server will run _bundle exec rake_ by default, so let's set up a Rakefile and make sure Rake will generate the same output as _bundle exec cucumber_. This Rakefile will support running Cukes or Specs. By default, we'll run the Cukes. 

```ruby 
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "--tag ~integration"
  t.pattern = Dir.glob('spec/**/*_spec.rb')
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty" # Any valid command line option can go here.
end

task :default => :features
```

Trying this in the development environment, we find it generates exactly the same output as _bundle exec cucumber_. 

<hr/>

### Time check 

_Implement Given step in Cucumber and run in the development environment_ 

- If someone on the team has done this before: 1 hour 
- If no one on the team has done this before: 3 hours

Cycle Time so far: 

- Best case: 02:20 + 01:00 = 03:20
- Worst case: 06:05 + 03:00 = 09:05 

<hr/>

### Continuing with: Echo - Implement "Given the application is available"

We've implemented the first Cucumber step for the Echo story, but it only runs in the development environment. We need it to run with an automated CI build, too. Our next step is to set up Continuous Integration, so a build will run automatically whenever the team commits changes to version control. 

For our project, the team has selected Travis CI for continuous integration support. A minimal .travis.yml file looks like this: 

```
language: ruby
rvm:
 - 2.5
 - jruby
```

The .travis.yml file goes in the project root directory. We know we will need much more configuration than this, but we want to take baby steps and check everything as we progress. 

Let's add that .travis.yml file and commit to version control. At this point, our [Travis dashboard](https://travis-ci.com/neopragma/ruby-galaxy) shows "no builds." 

Now when we commit to version control, we expect Travis CI to run a build automatically. Let's see if that happens. 

The good news is the CI build started automatically!

The bad news is we have an error: 

```
$ bundle exec rake
/home/travis/.rvm/rubies/ruby-2.5.5/bin/ruby -S bundle exec cucumber --format pretty
Feature: Echo Transaction
  Background:                          # features/echo.feature:3
    Given the application is available # features/step_definitions/echo_steps.rb:1
      bad URI(no host provided): http:/// (URI::InvalidURIError)
      ./features/step_definitions/echo_steps.rb:2:in `"the application is available"'
      features/echo.feature:4:in `Given the application is available'
``` 

We haven't provided the correct URL for the service in the CI environment. We need to tell Travis CI to start our _thin_ server and on what port the service will listen. Let's add a _script_ section to the .travis.yml file. We'll set the GALAXY_URL variable, start the server, run the cukes, and stop the server. When we commit this change to version control, Travis CI starts another build automatically. 

```
language: ruby
rvm:
 - 2.5
 - jruby
install:
 - bundle install
script:
 - export GALAXY_URL=http://0.0.0.0:3000
 - bundle exec rackup -P rackup.pid -p 3000 -o 0.0.0.0 &
 - bundle exec rake
 - kill `cat rackup.pid`
```

You might notice that the commands _rackup_ and _rake_ work just fine in the development environment without using bundler. This is one of the reasons to exercise the CI service as early as possible in the development process. Those commands will not work properly when the build runs under Travis CI. Bundler is handling all the dependencies, so we have to run these commands _via_ bundler. We can get away with it on our dev box because we have things installed and configured above and beyond the bare minimum requirements for the app. Travis CI does not. It creates and provisions the Ubuntu instance on the fly, based on what we specify in the .travis.yml file. 

You might also notice the _bundle exec rackup_ command in the .travis.yml file is not idempotent. Why? It's because Travis CI will create the Ubuntu instance on the fly to run the build. It will not use a pre-existing instance that might already have a server active. In general, by creating server instances dynamically based on version-controlled specifications helps us avoid most of the issues that may be caused by inconsistent configuration settings or installed packages across different environments.

There are a couple more tweaks to make to the .travis.yml file. We stated in the introduction that our team uses trunk-based development as a standard work flow. However, that doesn't mean there are never any other branches. Short-lived branches for experimentation, and possibly sometimes to deal with production issues, may exist from time to time. We don't want Travis CI to start a build every time someone commits to one of those short-lived branches. So, we'll add a _branches_ section to the .travis.yml file:

```
branches:
  only: master
```

It's also helpful to be notified when a build fails. For that, we'll add an _email_ section to the .travis.yml file. At this point, our .travis.yml file looks like this:

```
email:
  recipients:
  - davenicolette@gmail.com
  on_success: change
  on_failure: change
language: ruby
rvm:
 - 2.5
 - jruby
branches:
  only: master
install:
 - bundle install
script:
 - export GALAXY_URL=http://0.0.0.0:3000
 - bundle exec rackup -P rackup.pid -p 3000 -o 0.0.0.0 &
 - bundle exec rake
 - kill `cat rackup.pid`
```

When we commit changes to version control, the Travis CI build automatically starts, and it's running clean. But not for long, because we aren't finished with this task yet. 


<hr/>

### Time check 

_Implement Given step in Cucumber and run in the development environment_ 

- If someone on the team has done this before: 1 hour 
- If no one on the team has done this before: 3 hours

Cycle Time so far: 

- Best case: 03:20 + 01:00 = 04:20
- Worst case: 09:05 + 04:00 = 13:05 

<hr/>

### Continuing with: Echo - Implement "Given the application is available"

At this point, our first Cucumber step for the Echo story is working in the development environment and in the CI environment, but not in production. We also haven't yet integrated static code analysis with the CI build. 

Our team discusses the situation and decides to complete the static code analysis integration before moving on to set up automated deployment to production. 

