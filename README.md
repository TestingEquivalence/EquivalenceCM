This project belongs to a published article:

Vladimir Ostrovski,
On Application of the Cramér-von Mises Distance for Equivalence Testing
Journal of Statistics and Computer Science
Vol. 1, No. 1, 2022, pp. 1-9
© ARF India. All Right Reserved
open acces to article under:
URL : https://www.arfjournals.com/jscs
https://DOI: 10.47509 /JSCS.2022.v01i01.01

A preprint is available under:
https://www.researchgate.net/publication/362546448_On_Application_of_the_Cramer-von_Mises_Distance_for_Equivalence_Testing


Abstract: 
Abstract We consider an equivalence test for a fully specified continuous distribution on R. 
The equivalence test is a powerful tool to show that observed data are sufficiently close to a given distribution. The test under consideration is based on the time-proven Cramér-von Mises distance. We show that the test is locally asymptotically most powerful. A consistent estimator for the asymptotic variance of the test statistic is provided. The bootstrap percentile-t method is applied to improve the finite sample performance of the equivalence test. A detailed algorithm for the asymptotic and percentile-t tests is given. An extensive simulation study of the finite sample properties is performed. A practical approach to find efficient values of the tolerance parameter is provided. 

Keywords: 
testing equivalence; Cramér-von Mises distance; equivalence test; neighborhood-of-model validation

How to start:
start with examples in example.R

Introduction:
Let G be CDF (cumulative density function) of some distribution on the real line.
We observe a sample of n independent identically distributed random numbers, which true underlying CDF is F. 

Let d(F,G) denote the well known Cramer-von Mises distance ( integral (F-G)^2 dG).
Then the equivalence test problem is defined by
H0={d(F,G)>epsilon} versus H1={d(F,G)<=epsilon}
for the tolerance parameter epsilon>0.

If the hypothesis H0 can be rejected based on the observed data only for 
a sufficiently small value of epsilon, then the true 
underlying distribution F is close to the given distribution G. 

This code provides a significance test for the equivalence tests problem,
called  equivalence test. Three variants of the equivalence test are given:
- asymptotic test, where the critical value is computed using the asymptotic approximation;
- asymptotic test where the variance of the test statistic is estimated by bootstrap;
- percentile-t bootstrap test, whre the critical value is computed by percentile-t bootstrap method.





