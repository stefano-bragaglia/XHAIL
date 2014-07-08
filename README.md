XHAIL
=====

**XHAIL** *(eXtended Hybrid Abductive Inductive Learning)* is a nonmonotonic ILP *(Inductive Logic Programming)* system that combines *deductive* (consequence-based), *abductive* (assumption-based) and *inductive* (generalisation-based) inference types within a common logical framework.

The system takes a background theory *B* and a set of examples *E* as input to return a set of hypotheses *H* that entail *E* with respect to *B* as output. The hypothesis space is constrained by a set of user-defined mode declarations and is filtered by a compression heuristic that prefers hypotheses with fewer literals.

Requirements
------------

This repository contains both the source files and some example problems for **XHAIL**.
In order to solve these problems you need to fulfil some requirements.
They can be divided in *compiling requirements* and *runtime requirements*.

### Compiling XHAIL

The source files included in this repository are organised on the typical structure of a *Maven* Java project, with separate folders for actual implementation and testing purposes. 
Both these directories are further divided in two subfolders for Java code and resources.

The whole project was developed in Java using Eclipse as Integrated Development Environment (IDE) with the inclusion of Gradle (an interesting and powerful alternative to Maven) as a compiling assistant.
The IDE has been also equipped with an Eclipse plugin (an additional framework to help people implement IDEs for specific languages) to exploit ANTLR v4 to define the new XHAIL language and provide parsing functionalities and another one to support Gradle from within the IDE. 
To compile XHAIL it suffice to have a computer equipped with a recent version of Java and Gradle.
To edit and modify it, it is suggested to install the whole software cited above.

The procedure to do so
