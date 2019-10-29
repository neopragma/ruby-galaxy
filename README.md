# Merchant's Guide to the Galaxy

The Merchant's Guide to the Galaxy is a simple programming exercise that's often used to screen candidates for software developer positions or as an exercise in [code dojos](http://codingdojo.org/). Here's the [Problem Description](ProblemDescription.md).  

## Contents 

- [Another problem description](#another-problem-description)
- [Opinions are like belly-buttons](#opinions-are-like-belly-buttons)
- [Another goal for the exercise](#another-goal-for-the-exercise)
- [Assessment](#assessment)
- [Getting Started: Analysis](#getting-started-analysis)
- [Getting Started: Planning](#getting-started-planning)
- [Development: First Work Items](#development-first-work-items)

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

#### Comparison of Teams

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
- High satisfaction with the results of the initial planning activities.

#### Comparison of Teams

Both teams are now ready to begin development. Team CorporateCogs took 274 hours to reach this point. Team CustomersPet took 11 hours to reach the equivalent point in their process. 

<hr/>

## Development: First Work Items

Now that the initial planning steps have been completed, our team can begin the enjoyable and satisfying work of building a useful and well-designed application that provides real value to our customers. This is the reason we entered the software field in the first place! This is when the _fun_ begins!

### Team CorporateCogs

Except where dependencies are noted, activities can be carried out in parallel.

**Activity 1:** Submit request to the IT Administration team to create a Git repository for the project and user IDs for team members and the application to access network resources. CT = 1.

**Activity 2:** Wait for results from the IT Administration team. CT = 120.

**Activity 3:** Set up the developer workstations. CT = 40.

**Activity 4:** Submit request to the Continuous Integration Team to set up the project on a CI server. This has a "finish" dependency on Activity 2. CT = 1.

**Activity 5:** Wait for results from the Continuous Integration Team. CT = 80.

**Activity 6:** Schedule a meeting with the API Team to explain what is needed from them. CT = 1.

**Activity 7:** Wait until the meeting with the API Team. CT = 80.

**Activity 8:** Wait for results from the API Team. CT = 80.

**Activity 9:** Schedule a meeting with the Testing Team to discuss testing approaches and strategies for the solution. CT = 1. 

**Activity 10:** Wait until the meeting with the Testing Team. CT = 80.

**Activity 11:** Prepare initial design for the server environment for the solution. CT = 20.

**Activity 12:** Schedule a meeting with the Infrastructure Engineering Team to present the design for the server environment. This has a "finish" dependency on Activity 11. CT = 1.

**Activity 13:** Wait until the meeting with the Infrastructure Engineering Team. CT = 80.

**Activity 14:** Modify the design for the server environment based on feedback from the Infrastructure Engineering Team. This has a "finish" dependency on Activity 13. CT = 8.

**Activity 15:** Prepare initial design for the solution database. CT = 12.

**Activity 16:** Schedule a meeting with the Database Team to present the design for the solution database. This has a "finish" dependency on Activity 15. CT = 1.

**Activity 17:** Wait until the meeting with the Database Team. CT = 80.

**Activity 18:** Modify the design for the database based on feedback from the Database Team. This has a "finish" dependency on Activity 17. CT = 6.

**Activity 19:** Prepare task-level estimates for all the items in the project plan. CT = 35.

**Activity 20:** Schedule a meeting with the Project Manager to discuss the estimates. This has a "finish" dependency on Activity 19. CT = 1.

**Activity 21:** Adjust estimates based on feedback from the Project Manager. This has a "finish" dependency on activity 19.

_Good things:_ 

- (None)

_Time so far:_

| Prev LT | Activity                            | Cycle Time | VA Time  | NVA Time | Cum VA | Cum NVA | PCE   | Lead Time |
| ------- | ----------------------------------- | ---------- | -------- | -------- | ------ | ------- | ----- | --------- |
| 274:00  | 1. Submit req to IT Admin           | 001:00     | 000:00   | 001:00   | 111:00 | 163:00  | 40.0% | 275:00    |
| 275:00  | 2. Wait for results from IT Admin   | 120:00     | 000:00   | 120:00   | 111:00 | 283:00  | 28.1% | 395:00    |
| 275:00  | 3. Set up developer workstations    | 040:00     | 000:00   | 040:00   | 111:00 | 313:00  | 28.1% | 395:00    |
| 395:00  | 4. Submit req to CI Team            | 001:00     | 000:00   | 001:00   | 111:00 | 314:00  | 28.1% | 395:00    |
| 395:00  | 5. Wait for results from CI Team    | 080:00     | 000:00   | 080:00   | 111:00 | 394:00  | 23.4% | 475:00    |
| 475:00  | 6. Sched meeting with API Team      | 001:00     | 000:00   | 001:00   | 111:00 | 395:00  | 23.4% | 475:00    |
| 475:00  | 7. Wait until meeting with API Team | 080:00     | 000:00   | 080:00   | 111:00 | 475:00  | 23.4% | 475:00    |
| 475:00  | 8. Wait for results from API Team   | 080:00     | 000:00   | 080:00   | 111:00 | 555:00  | 17.5% | 555:00    |
| 555:00  | 9. Sched meeting with Testing Team  | 001:00     | 000:00   | 001:00   | 111:00 | 556:00  | 19.9% | 556:00    |
| 556:00  | 10. Wait for meeting with Testing   | 080:00     | 000:00   | 080:00   | 111:00 | 636:00  | 17.5% | 636:00    |
| 636:00  | 11. Initial server design           | 020:00     | 020:00   | 000:00   | 131:00 | 636:00  | 20.5% | 636:00    |
| 636:00  | 12. Sched meeting with Infrastruc.  | 001:00     | 000:00   | 001:00   | 131:00 | 637:00  | 17.1% | 637:00    |
| 637:00  | 13. Wait for meeting with Infrastr. | 080:00     | 000:00   | 080:00   | 131:00 | 717:00  | 18.4% | 713:00    |
| 713:00  | 14. Modify design for server env.   | 008:00     | 008:00   | 000:00   | 139:00 | 717:00  | 16.2% | 717:00    |
| 717:00  | 15. Initial database design         | 012:00     | 012:00   | 000:00   | 151:00 | 717:00  | 17.6% | 717:00    |
| 717:00  | 16. Sched meeting w/Database Team   | 001:00     | 000:00   | 001:00   | 151:00 | 718:00  | 17.3% | 718:00    |
| 718:00  | 17. Wait for Database meeting       | 080:00     | 000:00   | 080:00   | 151:00 | 798:00  | 15.9% | 718:00    | 
| 718:00  | 18. Modify database design          | 006:00     | 006:00   | 000:00   | 157:00 | 798:00  | 16.5% | 718:00    |
| 718:00  | 19. Estimate all tasks in plan      | 035:00     | 000:00   | 035:00   | 157:00 | 833:00  | 15.8% | 753:00    |
| 753:00  | 20. Sched meeting with PM           | 001:00     | 000:00   | 001:00   | 157:00 | 834:00  | 15.8% | 754:00    | 
| 754:00  | 21. Adjust task estimates           | 004:00     | 000:00   | 004:00   | 157:00 | 838:00  | 15.7% | 758:00    | 

_Team feeling_ 

- Frustration 
- Boredom
- Disengagement
- Impatience
- Stress

_Customer satisfaction_ 

- Worried that the project has become opaque. With no obvious progress or results, customer asks for status reports and estimates. 

### Team CustomersPet 

**Activity 1:** Realize _Echo Transaction_ Cucumber step, "Given the application is available."

The team decides to _swarm_ or to work in a _mob programming_ setting to complete this item, so that all team members will have a consistent understanding of how the solution architecture and delivery pipeline emerge. The WIP Limit is 1. 

First, the team discusses the Definition of Done for this story. The basic Definition of Done is: 

- An Echo Transaction is processed by the application.

In turn, the definition of an Echo Transaction is a request passed to the Galaxy service that contains an integer, with a response document containing the integer value incremented by one, to demonstrate that the service processed the message. 

At this point, the team is taking an _outside-in_ test-driven development approach, using an assertion at the "acceptance test" level to guide the solution design. 

The Echo Transaction must penetrate all layers of the application architecture, and must provide a working example of key design considerations such as _observability_. 

There was no need to design the application architecture in detail in advance, as the process of satisfying the Definition of Done for "Given the application is available" will drive out the architecture naturally - there would be no way to run a transaction unless there were a production environment to host the service and a delivery pipeline to deploy the code. 

Microservices are a "known" type of solution, and the team is confident they can allow the design to emerge provided they follow the _principle of least astonishment_, without the need for a detailed design up front. Other details, such as JSON, Cucumber, Rspec, the Honeycomb API, conventions regarding Ruby project directory structures and file naming conventions, good practices for exception handling, the format and content of configuration files for the various cloud-based services, and general API design guidelines are also well-known and amply documented. None of these things must be specified in detail up front before the team can begin development. 

There is no need for team members to make short-term estimates for fine-grained tasks, as there is nothing they could do that would yield greater value than to complete the first work item in the backlog, and no estimate they could produce that would speed delivery of that work item. 

Here's the deployment toolchain the team decided on:

- Version Control System - Git 
- Version Control Service - Github (https://github.com)
- Development Environment - CodeAnywhere (https://codeanywhere.com)
- Continuous Integration - Travis CI (https://travis-ci.com)
- Static Code Analysis - Code Climate (https://codeclimate.com/oss/)
- Deployment, Production Ops - Heroku (https://www.heroku.com/home)

These things will fall into place as the team realizes, "Given the application is available."

**Activity 1, Task 1:** Create Github project and invite team members to join it. 

CT = 00:30. 

**Activity 1, Task 2:** Create a team account on CodeAnywhere and define a container provisioned with Ubuntu as a Ruby development environment. 

CT = 0:45.

**Activity 1, Task 3:** Create a conventional project directory structure for Ruby webservice development, including Rspec and Cucumber. 

```shell 
mkdir galaxy
cd galaxy
mkdir app 
mkdir -p features/step_definitions 
mkdir -p features/support
mkdir spec 
```

CT = 01:00.

**Activity 1, Task 4:** Create Cucumber feature file for the Echo Transaction 

The team creates a file under galaxy/features named echo.feature, and adds the Gherkin feature text they defined during planning. 

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

CT = 00:05.

**Activity 1, Task 5:** Define project dependencies 

The team is using _bundler_ for dependency management, so they create a file named _Gemfile_ in the project root directory and specify the Ruby Gems needed for the project.

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

Then the team uses Bundler to download and install the dependencies. 

```shell 
bundle install --path vendor/bundle
```

CT = 00:10. 

**Activity 1, Task 6:** Code minimal service implementation 

In the project root directory, the team runs:

```shell 
bundle exec cucumber 
```

As the step definition doesn't exist, Cucumber offers a suggested implementation:

```shell 
3 scenarios (3 undefined)
14 steps (14 undefined)
0m0.024s

You can implement step definitions for undefined steps with these snippets:

Given("the application is available") do
  pending # Write code here that turns the phrase above into concrete actions
end

...
```

The team wants to separate concerns from the outset, so instead of dumping code into a single source file, they separate the following concerns into different source files:  

- accepting RESTful calls; and
- processing request messages and formatting responses.

To accept RESTful calls, they create the file app/galaxy.rb and write therein the rudiments of a nascent Sinatra app:

```
require 'sinatra'
require 'thin'
require 'json'
require_relative "./handler"
 
get '/' do 
  Handler.new.default.to_json
end
```

To process requests and format responses, they create the file app/handler.rb and code the behavior for the default URI path. For now, they create a response document with the name of the service and a brief description. Should different requirements emerge later, it will be easy to change this. 

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

One of the team members has worked with Heroku before, and she informed the team that in production, the server will be started using _bundler_ to execute _rackup_. To avoid unpleasant surprises due to configuration differences, the team decides to start the server in the development environment in the same way. 

They create this _config.ru_ file in the project root directory:

```
require './app/galaxy'
run Sinatra::Application
```

Then they run _rackup_ via _bundler_ and specify IP address 0.0.0.0, which are what the production environment will expect. They start it as a background process so they can experiment with ways to check its operational status before investing time in writing the step definition.  

```shell 
bundle exec rackup -o "0.0.0.0" -p 3000 &
```

The _thin_ server is now running locally in the CodeAnywhere container (the development environment). 


CT = 01:30.


**Activity 1, Task 7:** Experiment with commands that can check the status of the service 

The team decides to use _curl_ to interact with the service. Another team member remembers there's a package named _jq_, which formats JSON text for readability. It isn't included in CodeAnywhere's default Ubuntu/Ruby setup. The team agrees to use it for command-line experimentation. It won't be part of the production solution. 

```shell 
sudo apt install jq
```

The URL was provided in the CodeAnywhere documentation that was generated when the team created the container. If you're following along, your URL will differ. Now the team can use _curl_ from a command line to see how the service behaves. 


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

The team is fanatical about quality, and doesn't want to be fooled by a false positive. It's possible an application can build and run nicely on the development environment because there are packages installed and/or configuration settings left over from previous work that enable the application to run. Those things might not exist on the target environment. So, a couple of the team members try the _curl_ command from their own laptops, separately from the CodeAnywhere container. They see the same result, so they are slightly more confident that things are working. 

CT = 00:10.

**Activity 1, Task 8:** Write executable step definition for "Given the application is available"

Now the team takes the lessons learned _curl_ to write an appropriate Cucumber step definition to verify the service is available. 

Cucumber suggested this: 

```ruby
Given("the application is available") do
  pending # Write code here that turns the phrase above into concrete actions
end
``` 

"Application is available" will mean that when a client accesses the API with path / the service returns a JSON document containing an element _service_ with value _galaxy_. So the Rspec expectation could look like this: 

```ruby 
expect(JSON.parse(response)['service'])
    .to eq('galaxy')
```

The test script won't execute _curl_ from inside the step definition. It will use the _rest-client_ gem instead. 

```ruby
RestClient.get "https://galaxy-davenicolette339440.codeanyapp.com"
``` 

Putting that much together results in the following code, which the team saves in a file named features/step_definitions/echo_steps.rb.

```ruby
Given("the application is available") do
    response = RestClient.get "https://galaxy-davenicolette339440.codeanyapp.com"
    expect(JSON.parse(response)['service'])
    .to eq('galaxy')
end
```

The team knows they can't leave the hard-coded URL in place. But for now, they want to focus on getting the step to execute correctly. They run Cucumber to try it out:

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

So, the team is getting some help from their tools. In Ruby, the error "uninitialized constant [class name]" means the application can't find a class named [class name]. They haven't told Cucumber where to find the class, RestClient. They fix it by adding a _require_ statement. By convention, Cucumber will look in a specific place for _require_ statements that apply to all the Cukes: features/support/env.rb. So, the fix is to create that file with the following contents: 

```ruby 
require 'json' 
require 'rspec'
require 'rest-client'
```

The _json_ and _rspec_ gems have nothing to do with this particular problem, but the team knows they're using those gems so we go ahead and include _require_ statements for them. Now when they run:

```shell 
bundle exec cucumber 
```

they get:

```
Feature: Echo Transaction

38.128.66.69 - - [27/Oct/2019:02:19:27 -0400] "GET / HTTP/1.1" 200 82 0.0024
  Background:                          # features/echo.feature:3
    Given the application is available # features/step_definitions/echo_steps.rb:1
```

The team knows they're on the right track with this step definition. As long as the _thin_ server is running and the URL is correct, the step "works." 

Now it's time to remove the hard-coded URL and use an environment variable instead. 

As a first step, the team decides to type the _export_ statement in the command line console. This will have to be done in a more automatic way eventually. For now, they want to be sure they've coded the environment variable and the associated Ruby code correctly. 

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

Running the Cukes again, the output is identical to the hard-coded version. So, the team knows they can use an environment variable to provide the URL. But they haven't set things up in a repeatable or automated way. 

They decide to code a few steps in a shell script and run the Cukes that way. As they learn more about the environment, they may be able to improve on that implementation. Here's a script that 

- sets the environment variable GALAXY_URL; 
- starts the _thin_ server; and
- runs the Cukes.

```shell 
export GALAXY_URL="https://galaxy-davenicolette339440.codeanyapp.com"
bundle exec rackup -o "0.0.0.0" -p 3000 &
bundle exec cucumber
``` 

They save it as _runcukes.sh_, and make it executable:

```shell 
chmod +x runcukes.sh 
``` 

To run it:

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

The server is still running from before. The script should be [idempotent](https://en.wikipedia.org/wiki/Idempotence). Idempotence is pretty important for scripts that do configuration or provisioning in a dynamic environment. It means if an operation is supposed to happen exactly once, then even if the operation is exdcuted multiple times the result will only happen once. Let's use this tiny, minor example to illustrate. 

The _runcukes.sh_ script can be idempotent if it checks whether the server is already running, and only attempts to start it if it isn't running. The team decides a quick-and-dirty solution will suffice for now, as they know there's more work ahead to finish building out the toolchain. If the URL returns an HTTP 200 status code, the assumption will be the server is operational. Otherwise, we'll start it. That's a bit crude, but okay for now. 

```shell 
export GALAXY_URL="https://galaxy-davenicolette339440.codeanyapp.com"
test $(curl --write-out %{http_code} --silent --head --output /dev/null "$GALAXY_URL" | grep "200") \
    || bundle exec rackup -o "0.0.0.0" -p 3000 &
bundle exec cucumber
```

The CI server will run _bundle exec rake_ by default, so the team wants to run it the same way in the development environment. They create a Rakefile in the project root directory and make sure _bundle exec rake_ will generate the same output as _bundle exec cucumber_. This Rakefile will support running Cukes or Specs. By default, it runs the Cukes. 

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

CT = 03:00. 

**Activity 1, Task 9:** Run Cukes with a CI build 

The next step is to set up Continuous Integration, so a build will run automatically whenever the team commits changes to version control. The team has selected Travis CI for continuous integration support. 

I'm not going to step through the setup process in detail here. This document is pretty long already. Suffice it to say that incorporating Travis CI with the project is a question of (a) signing up with Travis CI, (b) connecting the Github repo to Travis CI, and (c) providing a configuration file named _.travis.yml_ in the project root directory. For this sample project, the _.travis.yml_ file looks like this:

```
email:
  recipients:
  - persontonotify@somewhere.com
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

In real life, a team would probably start with the _language_ and _rvm_ sections and run many trial builds, using the error messages and exceptions they saw to guide them in filling in the rest of the configuration settings they needed for their project. For this document, we're just skipping those details. 

With Github connected to Travis CI and this _.travis.yml_ file in place, every commit to the _master_ branch will trigger a CI build. The team can then look at their Travis CI dashboard to check the results, examine log files, and so forth. 

CT = 03:00. 

**Activity 1, Task 10:** Configure static code analysis in the CI build

The next step is to integrate static code analysis and test coverage reporting into the CI build. The team has chosen to use a cloud-based service, CodeClimate, for these functions. In the interest of space, I'll just put the finished _.travis.yml_ file here. In reality, a team would probably have to do a little exploring of the tools and configuration settings to arrive at a satisfactory setup. This particular task isn't too complicated, so we'll assume that work would take about half an hour. 

```
env:
  global:
   - CC_TEST_REPORTER_ID=2babeb9e60ac3b048b093f9d0db889e2233d37d841126276654e710ea571c137
email:
  recipients:
   - davenicolette@gmail.com
  on_success: change
  on_failure: change
language: ruby
rvm:
 - 2.5
 - jruby
before_script:
 - curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > ./cc-test-reporter
 - chmod +x ./cc-test-reporter
 - "./cc-test-reporter before-build"
branches:
  only: master
install:
 - bundle install
script:
 - export GALAXY_URL=http://0.0.0.0:3000
 - bundle exec rackup -P rackup.pid -p 3000 -o 0.0.0.0 &
 - bundle exec rake
 - kill `cat rackup.pid`
after_script:
 - "./cc-test-reporter after-build --exit-code $TRAVIS_TEST_RESULT"
```

The references to "cc-test-reporter" and "codeclimate.com" are the relevant entries. The ID value is generated by CodeClimate when you sign up and connect a Github repo to it. The team can see static code analysis results and test coverage reports on CodeClimate's website. 

CT = 00:30. 

**Activity 1, Task 11:** Configure automated deployment to Heroku 

TBD


CT = 01:00.


_Time so far:_

| Prev LT | Activity                            | Cycle Time | VA Time  | NVA Time | Cum VA | Cum NVA | PCE   | Lead Time |
| ------- | ----------------------------------- | ---------- | -------- | -------- | ------ | ------- | ----- | --------- |
| 011:00  | 1. Given the application is available  | 011:40     | 011:40   | 000:00   | 011:40 | 011:00  | 51.3% | 022:40    |

_Team feeling:_ 

- High engagement 
- High interest 
- Happiness about learning new things
- Pleasure in showing stakeholders actual running code, even if limited 

_Customer satisfaction:_ 

- Joy at seeing software actually running at this early stage of the project - less than a week in!
- Anticipation that business value will be realized early, if the team continues to deliver at this rate.






<hr/>


Text below is being revised. Ignore it.


<hr/>


## Observability and Monitoring 

_Observability_ has become an important feature of microservice solutions. The complexity of a live production environment running in an elastic cloud infrastructure makes it impossible to test all scenarios exhaustively before deploying to production. Software product teams need a way to understand what's happening with their solution in the live production environment, providing sufficient fine-grained data to enable them to drill down into a problem and solve it quickly. Beyond that, what the team learns from these events should be folded back into the solution to improve it. 

As this exercise is based on "free" cloud-based tools, we have no practical way to demonstrate real production monitoring using observability-based tools like [Wavefront](https://www.wavefront.com/) or [Honeycomb](https://www.honeycomb.io/). In the interest of "realism," we'll write API calls to Honeycomb [as documented here](https://docs.honeycomb.io/api/events/) to register _events_. We won't bother with other Honeycomb feartures in this exercise. We'll mock the Honeycomb API calls and return status 200 with an empty response body in all cases. We just want to show how one might add instrumentation to an app, as that is rapidly becoming a baseline requirement for professional application development. 



