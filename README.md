XHAIL
=====

**XHAIL** *(eXtended Hybrid Abductive Inductive Learning)* is a nonmonotonic ILP *(Inductive Logic Programming)* system that combines *deductive* (consequence-based), *abductive* (assumption-based) and *inductive* (generalisation-based) inference types within a common logical framework.

The system takes a background theory *B* and a set of examples *E* as input to return a set of hypotheses *H* that entail *E* with respect to *B* as output. The hypothesis space is constrained by a set of user-defined mode declarations and is filtered by a compression heuristic that prefers hypotheses with fewer literals.

![**XHAIL** output](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/output.png "**XHAIL**")

The picture shows the answer to the well-known problem of penguins as computed by **XHAIL**.
In this problem, we know that penguins are a species of birds.
We have 4 individuals: some birds (`a`, `b` and `c`) and a penguin (`d`).
This information is called background knowledge, or simply background.
All the evidences show that `a` and `b` fly, `c` is very likely to fly and `d` is rather likely not to fly.
This information is commonly referred to as examples.
Last but not least, we know that birds typically fly and birds may (or may not) be penguins.
This information is known as mode declarations.
The answer provided by **XHAIL** suggests that each bird that is not a penguin flies.
The problem is encoded by the following statements:

    %% penguins_weighted.lp
    %%%%%%%%%%%%%%%%%%%%%%%
    
    #display flies/1.
    #display penguin/1.
    
    %% B. Background
    bird(X):-penguin(X).
    bird(a;b;c).
    penguin(d).
    
    %% E. Examples
    #example flies(a) @2.
    #example flies(b) @2.
    #example flies(c) =5 @2.
    #example not flies(d) =3 @2.
    
    %% M. Modes
    #modeh flies(+bird) :0-100 =4.
    #modeb penguin(+bird) :1 @2.
    #modeb not penguin(+bird) :3.
    
    %% Answer:
	% flies(V1):-not penguin(V1),bird(V1).


Requirements
------------

This repository contains the source code and some dataset with problems for **XHAIL**.
To run these and other problems, the application must be properly compiled and figured.
The following sections describe the steps required to use the **XHAIL** procedure to solve a problem.

### Prerequisites

**XHAIL** is a *Java* application, thus a *Java* environment -- or *Java Virtual Machine* (JVM) -- must be installed on the target machine to run or edit it. There are two kinds of *JVM*s: *Java Runtime Environment* (JRE) and *Java Development Kit* (JDK). If you already have a compiled version of XHAIL and you only want to run the application, just install a *JRE*. If you want to compile or modify and rebuild **XHAIL**, you have to install a *JDK*. We targeted *Java 8* (namely *Java* version 1.8, the most recent version available at the time of publication), to take advantage of the new features that were introduced with this version. With a few minor changes to the source code, the application should also run on older *JVM*s.

Many operative systems already have a *JVM* installed. You can check if your machine already has one by running the command `java -version` from the command line or terminal. If you get the following output, your machine is already equipped with the right version of *Java* to run **XHAIL**:

    java version "1.8.0_11"
    Java(TM) SE Runtime Environment (build 1.8.0_11-b12)
    Java HotSpot(TM) 64-Bit Server VM (build 25.11-b03, mixed mode)

If no *Java* environment is installed or the one available is of the wrong type or version, you need to install a new one. Multiple *JVM*s can coexist on the same machine. The *JVM* appropriate for your machine can be downloaded from the [Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index-jsp-138363.html) web site. Follow the instructions that you can find there to complete the installation. Even if it is not strictly needed to run the application, it is highly suggested that you set some environment variables for *Java*. If you need instructions, you can find several guides online with specific instructions for your own operative system. 

### Obtaining XHAIL

**Download XHAIL v0.5.1:** [xhail.jar](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/xhail.jar?raw=true)

You can obtain **XHAIL** by downloading it from the above link (you still need to configure it, see below) or by issuing the command `git clone https://github.com/stefano-bragaglia/XHAIL.git` on the command line or terminal to download and compile the sources. We recommend to use the latter procedure which requires the *git* tool to be installed on your machine. If it doesn't, you can find the latest *git* version for your operative system on the [official website](http://git-scm.com/downloads). Alternatively, you can use one of the several *GUI* applications for *git* (there are a few free, open source applications). If you have some problems dealing with *git*, we recommend to read this simple [guide](http://rogerdudler.github.io/git-guide/).

### Compiling XHAIL

The files in this repository are organised in a hierarchy of folders that is typical of any [Apache *Maven*](http://maven.apache.org) project. Any tool that supports such a directories structure can be used to compile **XHAIL**. We specifically use *Gradle* and we highly recommend you to do the same.
At the time of writing, the stable release of *Gradle* is 2.0 and it is available [here](http://www.gradle.org/downloads). Unzip the binaries package in a folder of your choice and add an environment variable that points to that location as you should have done for *Java*. More detailed instructions can be found in the *Gradle* documentation on the same site. Run the command `gradle -version` from the command line or terminal. If you get the following output, you have properly configured *Gradle* on your machine:

    ------------------------------------------------------------
    Gradle 2.0
    ------------------------------------------------------------
    
    Build time:   2014-07-01 07:45:34 UTC
    Build number: none
    Revision:     b6ead6fa452dfdadec484059191eb641d817226c
    
    Groovy:       2.3.3
    Ant:          Apache Ant(TM) version 1.9.3 compiled on December 23 2013
    JVM:          1.8.0_11 (Oracle Corporation 25.11-b03)
    OS:           Mac OS X 10.9.4 x86_64

Open a command prompt or a terminal and enter the folder where you downloaded the source code of **XHAIL**. Be sure to be in the root folder of the project: if the folder contains the file `build.gradle`, then you are in the proper directory.
Now simply issue the command `gradle installApp` to build and install **XHAIL** on you machine.
Be sure to be online because this procedure is going to download a few packages that are required by the application. The procedure might fail if you don't have enough privileges: on Mac or Linux, you can raise your privileges by preceding the above command with `sudo` and typing your password when requested. On Windows, run the command prompt with *administrator privileges* by right-clicking on its icon and choosing the appropriate menu item. The procedure will install **XHAIL** in `/usr/local/XHAIL-0.5.1/`, so if you wish to change this path, modify the value of `destinationDir` in `build.gradle` accordingly.

You should be now able to run **XHAIL**. Launch the command `java -jar /usr/local/XHAIL-0.5.1/xhail.jar --version` from the command line or terminal. If you get the following output, the installation completed successfully:

    xhail version 0.5.1
    
    Copyright (c) Stefano Bragaglia
    Copyright (c) Oliver Ray
    
    GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
    'xhail' is free software: you are free to change and redistribute it.
    There is NO WARRANTY, to the extent permitted by law.

To save you time when typing the command, we recommend to add the following alias to your shell profile: 

    alias xhail='java -jar /usr/local/XHAIL-0.5.1/xhail.jar' 

so that next time you want to run **XHAIL**, you can simply type `xhail --version`. On Windows you can achieve a similar result by creating a batch file `xhail.bat` which passes all the arguments it receives to **XHAIL**:

    java -jar C:\Program Files\XHAIL-0.5.1\xhail.jar %*

Be sure to save the batch script in a folder which is included in the `PATH` environment variable.

#### Modifying XHAIL

This implementation of **XHAIL** is still young and, even if we did our best to remove any bug, there might still be some. If you find any, please report them and we will do our best to correct them. We highly encourage you to fix them yourself, to experiment with the application and ultimately to contribute to it. If you plan to do so, you might need some additional information about the tools that we used to write **XHAIL**.

This repository also contains the configuration files for *Eclipse*, one of the most common and popular *Java* *Integrated Development Environment* (IDE). We recommend you to use *Eclipse* to work on **XHAIL**. You can download the latest version, *Luna* which already supports *Java 8*, from its official [web site](https://www.eclipse.org/downloads/). Once you downloaded the archive most appropriate for your machine, extract it and simply run the *Eclipse* application. To start working on **XHAIL**, just import the source code as a Java project. You might want to move the source files inside *Eclipse*'s workspace directory.

*Gradle IDE* is a plugin that supports *Gradle* directly from *Eclipse* (available [here](http://www.gradle.org/tooling)).
*Minimalist Gradle Editor* adds an editor for *Gradle* files to your *Eclipse* distribution (available [here](http://marketplace.eclipse.org/content/minimalist-gradle-editor)).

### Configuring XHAIL

**XHAIL** delegates some of the reasoning tasks it performs to an external *ASP* engine, which is therefore required to make it work properly. 
The *ASP* platform that we have chosen to use is *Gringo*/*Clasp*.
These tools in fact support many interesting features and often win *ASP* competitions.
In particular, we aim to use the 3rd major release of *Gringo*/*Clasp* because it is the most recent version supporting *reification*, which is required by the **XHAIL** procedure.
**Notice** that *reification* is not currently supported by the latest major release because these tools are undergoing a language standardisation process but it should be reintroduced soon.
These tools are part of the *Potsdam Answer Set Solving Collection* (POTASSCO), more information is available on the [web site](http://potassco.sourceforge.net) of the project.

The following paragraphs illustrate how to download and install both *Gringo* and *Clasp*.
You can download sources from the official web site, but you can also conveniently find compiled binaries on [SourceForge](http://sourceforge.net/projects/potassco/) in the *Files* section. 
You need to repeat the following steps for both *Gringo* which is used to ground problems, and *Clasp* which finds the stable models within the grounded knowledge base returned by the other tool. 
Enter *Gringo*'s (*Clasp*'s) folder and then the folder for the most recent version among those of the 3rd major release.
At the time of writing this guide, the most recent version of *Gringo v3* (*Clasp v3*) is **3.0.5** (**3.1.0**).
Now select the package that is appropriate for your system and the download should start in a few seconds.
Further instructions are provided within the package.
Please take note of the folder where the binaries will sit as it will be needed later.

If the procedure has been completed successfully, you should now be able to run the following commands on the command line or a terminal and get the given output:

    > /usr/local/bin/gringo --version
	
    gringo 3.0.5
    
    Copyright (C) Arne König
    Copyright (C) Benjamin Kaufmann
    Copyright (C) Roland Kaminski
    License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
    Gringo is free software: you are free to change and redistribute it.
    There is NO WARRANTY, to the extent permitted by law.

or simply `gringo --version` if the target folder is on the `path`, and

    > /usr/local/bin/clasp --version
	
	clasp version 3.0.3
	Address model: 64-bit
	Configuration: WITH_THREADS=0
	Copyright (C) Benjamin Kaufmann
	License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl.html>
	clasp is free software: you are free to change and redistribute it.
	There is NO WARRANTY, to the extent permitted by law.
	
or simply `clasp --version` if the target folder is on the `path`.

**Notice** that some valid versions of *Gringo*/*Clasp* may have a slightly different output which makes **XHAIL** unable to properly recognise them. 
In such an unfortunate event, please report it and it will be fixed as soon as possible.

### Running XHAIL

After the *Gringo*/*Clasp* tools have been installed and the *Java* wrapper has been compiled, **XHAIL** can eventually be run.
If launched with `--help` (or `-h`) as an argument, it produces the following help message that includes an example of usage and the list of admitted arguments:

    xhail version 0.5.1
    
    Usage:     java -jar xhail.jar  [options]  [files]
    
    Options:
    
      --all,-a            : Print all the best answers
      --blind,-b          : Remove colours from the program output
      --clasp,-c <path>   : Use given <path> as path for clasp 3
      --debug,-d          : Leave temporary files in ./temp
      --full,-f           : Show a more detailed output
      --gringo,-g <path>  : Use given <path> as path for gringo 3
      --help,-h           : Print this help and exit
      --iter,-i <num>     : Run <num> iterations for non-minimal answers
      --kill,-k <num>     : Stop the program after <num> seconds
      --mute,-m           : Suppress warning messages
      --prettify,-p       : Nicely format current problem
      --search,-s         : Search for clasp 3 and gringo 3
      --version,-v        : Print version information and exit
    
    Example:   java -jar xhail.jar  -c /Library/Clasp/clasp  -g /Library/Gringo/gringo  example.pl

**Notice** that all the arguments are optional except for `--gringo <path>` (or `-g <path>`) and `--clasp <path>` (or `-c <path>`) that must be both specified to notify the path (either absolute or relative, provided that includes the full name of the application, i.e.: `C:\ASP\gringo.exe`) of the two programs.

**Notice** also that the argument `--search` (or `-s`) can be used in place of either `--gringo <path>` (or `-g <path>`) and `--clasp <path>` (or `-c <path>`). 
This argument triggers a routine that recursively visits the folders of the first logical drive of the machine starting from its root, therefore it may take a while to complete.
To be precise, this routine first tries to visit a few common locations where *Gringo*/*Clasp* may have been installed to avoid the recursive search and speed up operations.
Such locations are the following:

- `/Library/Gringo/`
- `/Library/Clasp/`
- `/usr/bin/gringo/`
- `/usr/bin/clasp/`
- `/usr/bin/`
- `/usr/local/gringo/`
- `/usr/local/clasp/`
- `/usr/local/`
- `C:\Gringo\`
- `C:\Clasp\`

The other arguments are pretty self-explanatory:

- `--all` (or `-a`) stamps all the optimal answers found instead of stopping after finding the first one
- `--blind` (or `-b`) inhibits the usage of ANSI colour codes to generate the program's output; this is useful when redirecting the program's output as otherwise it would be hardly readable
- `--debug` (or `-d`) saves a copy of temporary files in `./temp` for debugging purposes
- `--full` (or `-f`) displays more information (which might be useful in some cases) for each answer
- `--help` (or `-h`) prints the help message above
- `--iter <num>` (or `-i <num>`) allows more iterations of increasing complexity when a minimal compressive theory can't find an answer for the given problem
- `--kill <num>` (or `-k <num>`) interrupts the execution after the given amount of seconds (if it would normally takes longer than this)
- `--mute` (or `-m`) hides all the warning messages reported by *Gringo* and *Clasp* (critical halting errors are still reported)
- `--prettify` (or `-p`) nicely formats the problem loaded in memory and prints it on the `stderr`
- `--version` (or `-v`) simply displays current version information and gracefully exits.

**Notice** that the path of any program to solve (either absolute or relative, including full name and extension) may be passed as an argument and **XHAIL** will automatically try to load and solve it.
If more than one file is specified, they will all be loaded and considered as a unique problem to solve.
Therefore the statements in one file may hide similar statements previously loaded from other files.
If no file is specified, anything typed or redirected to the standard input (up to the *EOF* is received) will be considered as the problem to solve.

The following example, for instance, uses the applications `/Library/Clasp/clasp` and `/Library/Gringo/gringo` as sources for *Clasp* and *Gringo*, solves the problem in the relative path `./examples/toys/penguins_weighted.pl`, ignores warning messages and does not use colourful output:

    xhail  -a  -b  -f  -m  -c /Library/Clasp/clasp  -g /Library/Gringo/gringo  ./examples/toys/penguins_weighted.pl

If no `alias` was defined for **XHAIL**, the command line is the following: 

    java -jar xhail.jar  -a  -b  -f  -m  -c /Library/Clasp/clasp  -g /Library/Gringo/gringo  ./examples/toys/penguins_weighted.pl

In either cases, the following output is produced:

    xhail 0.5.1
    
    Reading from 'examples/toys/penguins_weighted.lp'...
    
    Solving...
    
    Answer 1:
      model:
        penguin(d) flies(b) flies(c) flies(a)
      delta:
        flies(b) flies(c) flies(a)
      kernel:
        flies(b):-not penguin(b).
        flies(c):-not penguin(c).
        flies(a):-not penguin(a).
      hypothesis:
        flies(V1):-not penguin(V1),bird(V1).
      uncovered:
        -
      covered:
        flies(b) flies(c) flies(a) not flies(d)
    
    Answers     : 1
      optimal   : 1
      shown     : 1
    Calls       : 2
    Time        : 0.129s  (loading: 0.055s  1st answer: 0.127s)
      abduction : 0.032s
      deduction : 0.007s
      induction : 0.015s

### Some details about XHAIL syntax

The language that is currently supported by **XHAIL** is very similar to *Gringo*/*Clasp* own language.
This is due to the fact that **XHAIL** may be seen as an extension for nonmonotonic abductive/deductive/inductive learning of the *Potassco* tools.

A detailed description of all the **XHAIL** language's productions would probably be too tedious, therefore the basic constructs will be given for granted.
It suffice to say that the language's core is the same as *ASP* which, in turn, is very similar to *Prolog*.
In case you are familiar with it, it lacks *lists* but offers some other features like *disjunctions* (`a `**`|`**` b :- c.`), *intervals* (`1`**`..`**`5`), *conditions* (`a(X) :- r(X,Y) `**`:`**` b(Y).`), *pooling* (`a`**`;`**`b`), *aggregates* (**`#avg`**, **`#count`**, **`#even`**, **`#max`**, **`#min`**, **`#odd`**, **`#sum`**) and *optimisations* (**`#maximize`**, **`#minimize`**). 
On top of that, **XHAIL** also offers some other *meta-statements* or *directives* that are still introduced by an hash symbol (**`#`**) but differs from the above (i.e.: **`#const`**, **`#domain`**, **`#external`**, **`#show`**, **`#hide`**, **`#compute`**).
The reader that requires any help with these productions or wants to explore these topics may refer to the official user guide ([A User’s Guide to `gringo`, `clasp`, `clingo`, and `iclingo` (version 3.x)](http://www.cs.utexas.edu/~vl/teaching/388L/clingo_guide.pdf)). 

#### XHAIL-specific productions

Therefore, in the following, only the differences between the **XHAIL** language and the above basic *ASP* language will be discussed.
First of all, it is convenient to distinguish the differences in *variations* with respect to the basic *ASP* language and in *extensions* to support **bias**.
In regards of the *variations* with respect to the basic *ASP* language, consider the following:

* due to some internal optimisation, **`#show`** and **`#hide`** are no longer supported; they are replaced by **XHAIL**'s own directive **`#display`** whose semantics is as follows: 
  - normally, no fact is displayed in the output,
  - it is possible to include some facts of a given kind in the output by specifying a pattern (a predicate identifier and an arity number) as follows:

      **`#display`**  `<identifier>`  **`/`**  `<arity>`  **`.`**

  - it is also possible to use the directive without patterns to require all the facts to be included in the output:

      **`#display`**  **`.`**

    Please refer to the following *syntax diagram* (*railroad diagram*) for the **`#display`** directive:
	
    ![`#display` construct](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/display.png "`#display`")

* **`#maximize`**, **`#minimize`** and **`#compute`** are still supported, but we highly discourage to use them because if not used with extra care, they may interfere with the internal logic of the **XHAIL** procedure.

* we introduce a few specific directives to specifically support the nonmonotonic learning tasks:
  - **`#example`** is used to provide positive or negative *evidences* that the **XHAIL** procedure tries to cover when building a unifying hypothesis to explain them; the typical syntax for these statements is as follows:

      **`#example`**  `[not]`  `<atom>`  **`.`**
	  
  - **`#modeh`** is used to state *head mode declarations* which are used to express what might be needed to assume to trigger the construction of the hypotheses; the syntax for these statements is the following:

      **`#modeh`**  `<scheme>`  **`.`**
	
	where the *scheme* is any predicate whose atoms may be preceded by a **`+`**, a **`-`** or a **`$`** to respectively express the so-called *input variables*, *output variables* and *constants* of the mode declarations. 

  - **`#modeb`** is used to state *body mode declarations* which are used to express the things to consider when trying to explain the things assumed thanks to the *head mode declarations* to explain the *examples* and successfully build the hypotheses; their syntax is:

      **`#modeb`**  `[not]`  `<scheme>`  **`.`**
	
	where the *scheme* is again any predicate whose atoms may be preceded by a **`+`** (*input variables*), a **`-`** (*output variables*) or a **`$`** (*constants*).
	
   The *syntax diagrams* (*railroad diagrams*) for **`#example`**, **`#modeh`** and **`#modeb`** statements are provided in the section below.

#### XHAIL language bias

These extensions further improve the **XHAIL** language introducing a more sophisticated way to model domains and providing the user a powerful facility to help him explore the hypotheses space.
Generally speaking, they allow to express weights, priorities and constraints on examples and mode declarations to polarise the way in which the answers are fond.

*Weights* (introduced by the symbol **`=`**) can be applied to **`#example`**, **`#modeh`** and **`#modeb`** and express the cost (or reward) that is involved when an *example* is covered or a *mode declaration* is used.
**Notice** that the **XHAIL** procedure tries to cover as much examples as possible and tries to find the most general hypothesis (an hypothesis is more general than another if it is more compact).
**Notice** that the *default weight* for *examples* and *mode declarations* is `1`.
**Also notice** that annotating an *example* with a weight means to make it defeasible since it introduces the cost that it is possible to pay *not* to cover that *example* and still solve the problem.
Consequently any *unweighted example* must be covered to be able to solve the given problem.

*Priorities* (introduced by the symbol **`@`**) can also be applied to **`#example`**, **`#modeh`** and **`#modeb`** and are used to partition *examples* and *mode declarations* into groups: statements pertaining to a more important groups are considered before statements pertaining to other groups.
An easier way to understand this concept involves buckets. 
Suppose to have a bucket for each priority value. 
All the above considerations about the *weights* of *examples* and *mode declarations* still applies, but rather than being considered all together, they are applied *per groups*.
For each group or bucket, **XHAIL** still tries to cover as much *pertaining examples* as possible while using as least *pertaining mode declarations* as possible to produce hypotheses.
Buckets are considered in decreasing order of importance so they might produce slightly different results with respect to the case without priorities.
**Notice* that the *default priority* value for *examples* and *mode declarations* is `1` which means that in the most general case all there is only a bucket with priority `1` and all the *weights* are applied to it.

Finally, *constraints* (introduced by the symbol **`:`**) apply only to **`#modeh`** and **`#modeb`** and express how many times it is possible to use them when building hypotheses.
A *constraint* typically consists in a range (in the form: `low`**`-`**`high`) which express the minimum amount of times that a *mode declaration* must be used to obtain a valid hypothesis and, similarly, the maximum number of utilisations not to be exceed to get valid answers.
**Notice** that it is possible to skip the lower bound: in that case it will implicitly be assigned to `0`.
**Also notice** that it is only possible to express the upper bound for **`#modeb`** because the lower bound is necessarily `0`.

Please refer to the following *syntax diagram* (*railroad diagram*) as a guidance on how to use *weights* and *priorities* with **`#example`** statements:

![`#example` construct](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/example.png "`#example`")

Similarly, please refer to the following *syntax diagram* (*railroad diagram*) to understand how to use *weights*, *priorities* and *constraints* with **`#modeh`** statements:

![`#modeh` construct](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/modeh.png "`#modeh`")

Last but not least, please refer to the following *syntax diagram* (*railroad diagram*) as an help for *weights*, *priorities* and *constraints* with **`#modeb`** statements:

![`#modeb` construct](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/modeb.png "`#modeb`")
