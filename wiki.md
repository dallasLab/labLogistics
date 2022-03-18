# Doing science in the Dallas lab

This document is meant to familiarize new lab members to how we **typically** do science in the lab, and to allow the sharing of techniques and softwares among lab members that may enhance our ability to do science. 


First, I will start with the current approach to doing science in the Dallas lab. This is not meant to be the absolute only way to do science in the lab, and members are encouraged to structure projects in a way that maximizes their own sanity. 





## maintaining a lab notebook

All members of the Dallas lab will be issued a lab notebook that they are responsible for maintaining. This means different things for different people, but the lab notebook should be organized in a way as to promote the comprehension of the material contained by other lab members, and (perhaps more importantly) by the future version of the person maintaining the notebook. This notebook can be used for daily to-do lists, important notes concerning experimental methods or progress, or to record raw data. 

**It is expected that experimental methodology, data, and results will be available on Github in a project repository.** The structure of this repo can vary, but should contain the following features:

+ an informative title: I like giving projects short names, which can they be used to reference the project e.g., `graphDissim` was an old project examining distance-decay relationships in ecological networks. 

+ a README file: this file should contain the relevant high-level information about the project. Who is involved, what's the focus of the project, what stage in development is the project in, etc. 

+ a LICENSE file: (optional) this document lays out the copyright information and usage of the information and code contained within the repo. 

+ an Analysis folder: a folder containing the scripts to reproduce the entire analysis. 

+ a Manuscript folder: a folder containing the relevant manuscript files. 


Structuring a project in this fashion from day 1 allows the project to immediately take shape, and encourages the proper documentation of research flow. That is, I expect that the manuscript files will begin more like a protocol. The methods section will contain all the relevant information to reproduce the experiment, and the analysis files will contain the code mirroring the methods. 


## collaboration

I do not need to be coauthor on every manuscript coming out of the lab, and I encourage students to research and publish independently of me. That being said, research using lab resources may be more suitable for my coauthorship, and I am happy to actively contribute to the project, or to allow the student to work independently. I also encourage students to collaborate with other scientists within LSU and outside. However, new collaborations should be discussed with me before students initiate them (if possible). 







## computational tools

This will change as machines get added to the lab. The current naming scheme is generally based on authors, but with the high memory machines named `beast` and then a number (currently we only have `beast1`). This doesn't include the workstations for students, which are 8gb Dell Optiplex 5020(maybe?). 

+ `poe`: Lenovo ThinkPad E590 (8gb RAM laptop for travel)
+ `beast1`: Dell Precision 3630 (64gb machine in 382)
+ `beast2`: Dell Precision 3630 (64gb machine in 382)


We also have lab access to the HPC cluster computing resources. We have the following allocations:

+ `hpc_fugazi`: 50k SU's* on `smic`
+ 
+ 

* 1 SU is one hour of computing time on a single core, so if you request 24 cores, each hour of computing is 24 SU's. 


While everyone in the lab will maintain a lab notebook, the computational tools labmembers use will likely be pretty diverse, so this list **is not prescriptive**. If lab members want to use different tools than listed here, that is completely fine. Different tools and workflows work for different people. However, the end goal is to utilize some combination of these tools to create a clear workflow for science in the Dallas lab. Some relevant reading includes [this](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1001745) and [this](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003506).

Below is a list of computational tools that I would like lab members to be cognizant of. 


+ `linux`: all lab computers will run the most current long term stable (LTS) release of Ubuntu. At least some machines will also be able to dual boot with Windows. 

+ `git` and `Github`: version control is an important part of science. It allows real time progress updates, issue tracking, and version control. There are numerous guides to beginning to learn how to use git with Github [training](https://swcarpentry.github.io/git-novice-es/) and [further training](https://guides.github.com/activities/hello-world/). 

+ `R`: lab members are expected to be familiar with the R programming environment. This is not to say you can't program in other languages (e.g., Python or Julia are good alternatives), but the most overlap with other lab members will likely come through the use of R. I don't care if you want to use base or the fanciest new package to hit the tidyverse, but having a common computational language among lab members has clear benefits [training](http://swcarpentry.github.io/r-novice-inflammation/)

+ `(R) markdown`: markdown is a markup language used to create this file. R markdown allows embedding R code within markdown documents, creating a document that can be compiled to contain both explanatory text and the results of analyses. [markdown tutorial](https://www.markdowntutorial.com/), [R markdown tutorial](https://rmarkdown.rstudio.com/lesson-1.html)

+ `LaTeX`: LaTeX is a typesetting language useful for formatting manuscripts, presentations, and posters. I have found it incredibly useful, though sometimes unfuriating. Templates for Dallas lab presentations/posters/academic articles are available within this repo. Lab members should feel free to use and modify these templates, or to not use them (but hopefully to use them). [training](https://www.latex-tutorial.com/tutorials/)





## keeping things up-to-date 

`presentations`: whenever you give a presentation (which I encourage you to do and will support your travel and conference costs for at least 1 conference per year), update the presentations file in the `labMeetingMinutes` repo (https://github.com/dallasLab/labMeetingNotes/blob/master/presentations.md). This is private, so only Dallas lab members will be able to see it. 

`publications`: get a Google scholar and/or a personal website. Both are pretty much essential as networking tools and allow you to publicize your research. 









## other resources

+ `inkscape`: a vector graphics editor that's great for conceptual figure tweaks and image manipulation. 

+ `emacs`: text editor that is pretty useful. If you want to be amused, Google 'emacs vs. vim' and read the degree of argument between camps. Perhaps a bit silly.

+ `unix shell`: the shell environment makes most of the above resources easier to use, and to not require a GUI (e.g., processing LaTeX files can be done from the terminal, or from user interfaces). Version control with git can be done through the terminal, as well as batch code runs, compilation of manuscripts and analyses using `make`, and much much more. Plus, in order to submit jobs to the cluster, you'll need to use the terminal. [training](https://swcarpentry.github.io/shell-novice/)




Lab members should feel free to suggest edits to this. I'm always trying to learn new software! :)





---

> The material in this document is inspired by and derived from "[Bahlai Lab Project Management](https://github.com/BahlaiLab/Policies/blob/master/Code_of_conduct.md)" by Dr. Christie Bahlai and the Bahlai lab team, "[Whitaker Lab Project Management](https://github.com/WhitakerLab/WhitakerLabProjectManagement)" by Dr. Kirstie Whitaker and the Whitaker Lab team, used under CC BY 4.0, and Tim Poisot's Lab Code of conduct, used under CC BY 4.0.

