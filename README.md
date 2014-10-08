XHAIL
=====

**XHAIL** *(eXtended Hybrid Abductive Inductive Learning)* is a nonmonotonic ILP *(Inductive Logic Programming)* system that combines *deductive* (consequence-based), *abductive* (assumption-based) and *inductive* (generalisation-based) inference types within a common logical framework.

The system takes a background theory *B* and a set of examples *E* as input to return a set of hypotheses *H* that entail *E* with respect to *B* as output. The hypothesis space is constrained by a set of user-defined mode declarations and is filtered by a compression heuristic that prefers hypotheses with fewer literals.

![**XHAIL** output](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/output.png "**XHAIL**")

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

If no *Java* environment is installed or the one available is of the wrong type or version, you need to install a new one. Multiple *JVM*s can coexist on the same machine. The *JVM* appropriate for your machine can be downloaded from the [Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index-jsp-138363.html) site. Follow the instructions that you can find there to complete the installation. Even if it is not strictly needed to run the application, it is highly suggested that you set some environment variables for *Java*. If you need instructions, you can find several guides online appropriate for your own operative system. 

### Obtaining XHAIL

You can obtain the source code of **XHAIL** by downloading and unpacking this [archive](https://github.com/stefano-bragaglia/XHAIL/archive/master.zip) in any folder of your choice, or by issuing the command `git clone https://github.com/stefano-bragaglia/XHAIL.git` on the command line or terminal. We recommend to use the latter procedure which requires the *git* tool to be installed on your machine. if it doesn't, you can find the latest version for your operative system on the [official website](http://git-scm.com/downloads). Alternatively, you can use one of the several *GUI* applications for *git* (there are a few free, open source valid application). If you have some problems dealing with *git*, we recommend to read this [guide](http://rogerdudler.github.io/git-guide/).

### Compiling XHAIL

The files in this repository are organised in a hierarchy of folders that is typical of any [Apache *Maven*](http://maven.apache.org) project. Any tool that supports such a directories structure can be used to compile **XHAIL**. We specifically use *Gradle* and we highly recommend you to do the same.
The current stable release of *Gradle* is 2.0 and it is available [here](http://www.gradle.org/downloads). Unzip the binaries package in a folder of your choice and add an environment variable that points to that location as you did for *Java*. More detailed instructions can be found in the *Gradle* documentation on the same site. Run the command `gradle -version` from the command line or terminal. If you get the following output, you have properly configured *Gradle* on your machine:

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
Be sure to be online because this procedure is going to download a few packages that are required by the application (i.e.: [ANTLR 4](http://www.antlr.org)). The procedure might fail if you don't have enough privileges: on Mac or Linux, you can raise your privileges by preceding the above command with `sudo` and typing your password when requested. On Windows, run the command prompt with *administrator privileges* by right-clicking on its icon and choosing the appropriate item. The procedure will install **XHAIL** in `/usr/local/XHAIL-0.5.1/`, so if you which to change this path, modify the value of `destinationDir` in `build.gradle` accordingly.

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

Since **XHAIL** internally uses *ANTLR 4* to parse its language and relies on *Gradle* to handle dependencies and compilation, we recommend to add some plugins to your *Eclipse* distribution.
*ANTLR 4 IDE* is a plugin that enables the editing and automatic compilation of *ANTLR 4* grammars within *Eclipse* (available [here](https://github.com/jknack/antlr4ide)).
*Gradle IDE* is a plugin that supports *Gradle* directly from *Eclipse* (available [here](http://www.gradle.org/tooling)).
*Minimalist Gradle Editor* adds an editor for *Gradle* files to your *Eclipse* distribution (available [here](http://marketplace.eclipse.org/content/minimalist-gradle-editor)).

### Configuring XHAIL

**XHAIL** delegates some of the reasoning tasks it performs to an external *ASP* engine, which is therefore required to work properly. 
The *ASP* platform that we have chosen to use is *Gringo*/*Clasp*.
These tools in fact support many interesting features and often win *ASP* competitions.
In particular, we aim to use the 3rd major release of *Gringo*/*Clasp* because it is the most recent version supporting *reification*, which is required by the **XHAIL** procedure.
Notice that *reification* is not currently supported by the latest major release because these tools are undergoing a language standardisation process but it should be reintroduced soon.
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
    
      --blind,-b          : Remove colours from the program output
      --clasp,-c <path>   : Use given <path> as path for clasp 3
      --debug,-d          : Leave temporary files in ./temp
      --gringo,-g <path>  : Use given <path> as path for gringo 3
      --help,-h           : Print this help and exit
      --kill,-k <num>     : Stop the program after <num> seconds
      --mute,-m           : Suppress warning messages
      --search,-s         : Search for clasp 3 and gringo 3
      --version,-v        : Print version information and exit
    
    Example:   java -jar xhail.jar  -c /Library/Clasp/clasp  -g /Library/Gringo/gringo  example.pl

**Notice** that all the arguments are optional except for `--gringo <path>` (or `-g <path>`) and `--clasp <path>` (or `-c <path>`) that must both be specified to notify the path (either absolute or relative, provided that includes the full name of the application, i.e.: `C:\ASP\gringo.exe`) of the two programs.

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

- `--blind` (or `-b`) inhibits the usage of ANSI colour codes to generate the program's output; this is useful when redirecting the program's output as otherwise it would be hardly readable
- `--debug` (or `-d`) saves a copy of temporary files in `./temp` for debugging purposes
- `--help` (or `-h`) prints the help message above
- `--kill <num>` (or `-k <num>`) interrupts the execution after the given amount of seconds (if it would normally takes longer than this)
- `--mute` (or `-m`) hides all the warning messages reported by *Gringo* and *Clasp* (critical halting errors are still reported)
- `--version` (or `-v`) simply displays current version information and gracefully exits.

**Notice** that the path of any program to solve (either absolute or relative, including full name and extension) may be passed as an argument and **XHAIL** will automatically try to load and solve it.
If more than one file is specified, they will all be loaded and considered as a unique problem to solve.
Therefore the statements in one file may hide similar statements previously loaded from other files.
If no file is specified, anything typed or redirected to the standard input (up to the *EOF* is received) will be considered as the problem to solve.

The following example, for instance, uses the applications `/Library/Clasp/clasp` and `/Library/Gringo/gringo` as sources for *Clasp* and *Gringo*, solves the problem in the relative path `./examples/toys/penguins_weighted.pl`, ignores warning messages and does not use colourful output:

    xhail  -b  -m  -c /Library/Clasp/clasp  -g /Library/Gringo/gringo  ./examples/toys/penguins_weighted.pl

If no `alias` was defined for **XHAIL**, the command line is the following: 

    java -jar xhail.jar  -b  -m  -c /Library/Clasp/clasp  -g /Library/Gringo/gringo  ./examples/toys/penguins_weighted.pl

In either cases, the following output is produced:

    xhail version 0.5.1
    
    Reading from ./examples/toys/penguins_weighted.pl
    Solving...
    
    Answer: 1
      model (8 fact/s):
        flies(a) flies(b) flies(c) penguin(d)
      delta (3 abducible/s):
        flies(+bird(a)) flies(+bird(b)) flies(+bird(c))
      kernel (1 clause/s):
        flies(V1) :- bird(V1), not penguin(V1).
      hypotheses (1 clause/s):
        flies(V1) :- bird(V1).
      coverage (4 example/s out of 4):
        flies(a) flies(b) flies(c) not flies(d)
      optimization
        abducing: 0 15
        inducing: 0 6
    
    Answers     : 1
    Runtime     : 0.228s
      parsing   : 0.038s
      abducing  : 0.020s
       a.gringo : 0.006s
       a.clasp  : 0.004s
      deducing  : 0.006s
      inducing  : 0.012s
       i.gringo : 0.004s
       i.clasp  : 0.004s

### Some details about XHAIL syntax
...

![`#display` construct](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/display.png "`#display`")

![`#example` construct](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/example.png "`#example`")

![`#modeh` construct](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/modeh.png "`#modeh`")

![`#modeb` construct](https://github.com/stefano-bragaglia/XHAIL/blob/master/examples/modeb.png "`#modeb`")
