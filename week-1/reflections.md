## 1.1 Think About Time

I enjoy exploring different approaches to managing happiness, structuring tasks, or maintaining a positive outlook. Some of the texts we read focus on workplace strategies, others target success on a personal level. I've struggled with some of these in the past couple years, while trying to run a one-man business. As with any similar endeavor, you start off planning on doing the cool part of the job all the time, and then quickly realize that is not the reality every day. Or even most days. It's doing all that other stuff, the hard stuff that's not fun, that begins to stare you in the face every day. Of course, that's work to some degree: some thing we feel forced to do in exchange for money. In any event, it doesn't help to complain. It's more constructive to develop ways to manage that stress and push through it.

I caught one reference to Daniel Coyle's "The Talent Code" which offers some interesting thoughts on practice. Specifically it mentions trying to develop practice routines that are targeted and focus on difficult skills. That resonates with me, though maybe more for my hobbies in music and other things, than for professional exercises.

The biggest connection I made was the article on "making it big by starting small." My wife has helped me identify that I have a weakness for overthinking a project, looking too far down the road and becoming overwhelmed by the scope of it. No doubt, I have talked myself out of too many things that were complicated at first glance. I hope to convert that mindset into one where I see the many smaller steps on the path, and motivate myself to tackle one or two no matter what. My foray into more serious web development has allowed me some space to do that. I've identified a couple projects I wanted to tackle, broke them down, and chipped away at them gradually. It's a strategy that is working, and I hope to continue it.

Time management is something I'm very familiar with, after having worked as a journalist. Working on deadlines that are firm and relatively tight, I find, is helpful to isolate the most important tasks and find ways to achieve them. Newspaper writers don't write great prose, but their top job is getting the facts rights and putting them in order that makes sense. A key part of that is figuring out what part of the story can be told for that day, or from a certain location, or within whatever limitations are present. I enjoy those kinds of deadlines and limitations, because they help me focus on the essential and how to get it done.

The Timeboxing strategies strike me as something similar, becauase they ask you to set a short deadline for a task and to stop when the deadline is up. The goals are twofold.First the method asks you to analyze the task and prioritize the individual components. Second, it provides immediate feedback on whether the goal was reached on time, providing an opportunity to reassess whether the initial goals were on target, or whether the effort was properly directed to achieve it. I especially like the aspect of assessing a task before jumping into -- the planning for the action. Working in teams, this should be a critical skill to develop to help manage workloads and foster the team spirit needed to succeed.


## 1.2 The Command Line

A shell is a program used for manipulating files and directories on a local computer system or a server, as well as for running some commands or functions. In my experience, I've used shells most often for managing files on an ftp server hosting web sites.

Bash is one shell environment initially developed for Unix systems. It is the default used for the Terminal app on Apple computers.

I was familiar with most of the commands covered this week. I've used them before on several occassions to manage files and directories, with mv and mkdir. New to me were commands like cat, less and echo. 'Touch' was another new one that I found fascinating. My work flow is often to create a new file in the intended directory, and then start editing the file. So to enter shell and 'touch' a new file and then open it seems very useful.

For me, the biggest challenge among the shell commands are the pipe tools. I can't think of a time in the past when I would have needed that functionality. But, having learned a bit of javascript, it seems to make sense now. In JS, you could store something in a variable and then perform an operation on it. Whereas, I don't know of any way to create variables in bash, so you need to grab that data and pipe it to another function in one line. Pushd and popd were interesting also, but I still don't totally grasp how to use them. It's definitely useful to jump between two directories in separate locations. But at one point, I played around with pushd and had three locations in my favorites list. Still, I was only able to jump between two of them, and not cycle between all three as I would have expected.

In my experience, the most useful commands in bash are cd, ls and mkdir/rmdir. I'm sure network admins would disagree. I'll throw in chmod as well, which is pretty critical for managing directories on a server. But I don't manage networks for a living. Most of the other functions that are possible through shell are operations I would do with other tools. Grep seems like a cool search utility, for example, but any modern operating system has GUI tools that accomplish the same thing.

-pwd --> show current directory

-ls --> list files in a directory

-mv --> move or rename a file

-cd --> change directory

-../ --> go up one level in a directory tree

-touch --> create a new file

-mkdir --> create a new folder/directory

-less --> show contents of a text file

-rmdir --> delete a directory/folder

-rm --> delete a file

-help --> shows hints for using the specified command


## 1.4 Forking and Cloning

