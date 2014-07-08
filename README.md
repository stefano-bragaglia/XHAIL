XHAIL
=====

**XHAIL** *(eXtended Hybrid Abductive Inductive Learning)* is a nonmonotonic ILP *(Inductive Logic Programming)* system that combines *deductive* (consequence-based), *abductive* (assumption-based) and *inductive* (generalisation-based) inference types within a common logical framework.

The system takes a background theory *B* and a set of examples *E* as input to return a set of hypotheses *H* that entail *E* with respect to *B* as output. The hypothesis space is constrained by a set of user-defined mode declarations and is filtered by a compression heuristic that prefers hypotheses with fewer literals.

Requirements
------------

This repository contains both the source files and some example problems for **XHAIL**.
In order to solve these problems you need to fulfil some requirements.
They can be divided in *compiling requirements* and *runtime requirements*.

