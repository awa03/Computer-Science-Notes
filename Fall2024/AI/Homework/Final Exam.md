# Final Exam
**Aiden Allen**

****

__1 A) What is Artificial Intelligence?__  
Artificial Intelligence is the effort to simulate or supplement human intelligence using machines, particularly computers. It encompasses a wide range of technologies, such as large language models, expert systems, computer vision, and more. AI is particularly valuable for solving problems that exceed human capacity due to their complexity or scale, leveraging the speed and efficiency of computational systems.

At its core, AI can be described as a set of instructions or algorithms designed with built-in knowledge or goals, which guide its processing and decision-making to perform specific tasks.

__1 B) Do you agree with Lovelace’s statement in the context of modern day computing? Explain your answer, i.e., state why you agree or disagree.__
Lovelace's statement regarding the analytical engine holds true today. Specifically in the context of the limitations of expert systems we can confirm her statement to hold true, _"it can do whatever we know how to order it to perform. It can follow analysis; but it has no power of anticipating any analytical relations or truths."_. Expert systems possess only the knowledge that is given to them, therefore they cannot draw any conclusions outside of this. For example if we do not provide the system with the information regarding blood pressure, an expert system will have no knowledge of the existence of this measurement nor the significance it may provide to analysis of some problems. AI systems maybe able to draw similarities and understand basic correlations between set features, however, it will not be able to provide any new information that could not be calculated manually. AI serves more to assist us in those calculations, than to draw new conclusions. 

__1 C) What is the Turing Test? What are some pitfalls of the Turing Test?__ 
The Turing test, a test created by the great cryptographer Alan Turing in 1949, is an attempt to classify if machines are intelligent. The test has 3 components: the machine, a human subject, as well as a tester. The machine will attempt to simulate human intelligence with the tester, in an attempt to fool the testing into believing that it is the human subject. A machine is thus considered to be intelligent if it can fool the tester. 

This test comes with many pitfalls, and has come under major scrutiny since its conception. For one, the goal of an intelligent machine is not necessarily to simulate human intelligence, rather to supplement it. Machines may possess their own independent form of intelligence, that may present differently than human intelligence. Additionally, humans are extremely variable making this test subjective and completely unscientific. One tester may reach a different conclusion than another. This is especially damning given the limited sample size of the test. These flaws not only challenge the validity of the test as a measure of intelligence but also underscore the need for more robust and scientific approaches. 

__1 D) What is the Physical Symbol Hypothesis, and Do you Agree with it?__
The Physical Symbol Hypothesis, proposed by Alan Newell and Herbert Simon, argues that for a machine to be considered intelligent, it must be able to understand and use physical symbols. I don’t agree with this conclusion for reasons similar to the issues with the Turing Test. The hypothesis overlooks how difficult it is to define what "understanding" really means. For example, the Chinese Room argument shows that someone could manipulate Chinese symbols to produce valid responses without actually understanding the language, as long as they have a set of rules to follow. Similarly, the Physical Symbol Hypothesis might oversimplify what intelligence actually is.

__1 E) In 1980, John Searle presented his Chinese Room Argument. What is the key point of Searle’s argument? Do you agree with it?__
The Chinese room argument posits that given a set of rules, a person maybe able to produce and manipulate Chinese characters in a manner in which it seems as though the subject understands what they are doing, even though they are just following a set of rules with no real understanding. This test is an argument against the possibility of machine understanding, and thus a counter to the physical symbol hypothesis. I do agree with this argument, given that in many ways it seems machines do not really understand what are are doing. For instance code generation, the major pitfall of LLM's are their inability to practically understand what they are doing. This can be demonstrated in the form of hallucinations as well as generating code that misuses libraries. 

****

__2 A) The Resolution inference rule says “From P ∨ Q and ¬Q ∨ R infer P ∨ R. Give a truth table argument that verifies that this rule is sound.__


| P   | Q   | R   | P ∨ Q | ¬Q ∨ R | P ∨ R |
| --- | --- | --- | ----- | ------ | ----- |
| T   | T   | T   | T     | F      | T     |
| T   | T   | F   | T     | F      | F     |
| T   | F   | T   | F     | T      | T     |
| T   | F   | F   | F     | F      | F     |
| F   | T   | T   | F     | F      | F     |
| F   | T   | F   | F     | F      | F     |
| F   | F   | T   | F     | T      | F     |
| F   | F   | F   | F     | F      | F     |

__2 B) Give a semantic argument that explains why ∃XP (X) is logically equivalent with ¬∀X¬P(X)__

First we will lay each argument out verbally to better understand the proposed argument. 

- _∃XP (X)_: There Exists X such that P(X) is True, meaning that there is at least one element X such that P(X) is true
- _¬∀X¬P(X)_: Not For All X Not P(X), meaning that it is not the case that for all X P(X) is false. In other words, there must be some X that makes P(X) true.

Therefore if within, _∃XP (X)_, we are stating that there must be an X that leads P(X) to be true. This is logically equivalent to saying that it is not the case that all P(X) is false. Since P(X) being false in all cases would negate the former. Therefore we have proved these statements logical equivalence. 

__2 C) if X does not occur free in Q, then ∀X(P (X) → Q)
is semantically equivalent with ∃XP (X) → Q. Give an example to show that these formulas will not necessarily be equivalent if X does occur free in Q.__

Lets first define our predicates to try and further understand why the formulas will not necessarily be equivalent if X does occur free in Q. 
- P(X): X is a cat
- Q: X is small

Now in understanding our question further lets express it in terms of our predicate definition. 
- for all X, if X is a cat, then X is small
	- Stating that if X is a cat it is small. In other words all cats are small, and if X is a cat than it must be small
- if there exists an X such that X is a cat then X is small. 
	- Stating much the same, with the exception of the existence of X

Now we can identify the difference between these statements to be that the latter requires the existence of X, whereas Q is not bound to any specific X. It’s a global statement that claims there’s some small X if there exists a cat, which does not specify which cat must be small.

- P(a) -> a is a cat
- P(b) -> b is not a cat
- Q(a) -> a is small
- Q(b) -> b is not small

For ∀X(P (X) → Q):
- P(a) is true, thus Q(a) must be true. 
- P(b) is false

For ∃XP(X)→Q:
- The premise ∃XP(X) is true, since there exists and X such that P(a) holds true. 
- The conclusion Q, implies all X are small, However Q(b) is false. So implication fails

So they are not semantically equivalent, since the first formula holds true in all cases, and the latter does not.  

____

