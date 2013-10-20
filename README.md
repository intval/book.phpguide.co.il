Open, crowd-source written php book in hebrew for beginners
===================

[book.phpguide.co.il](http://book.phpguide.co.il) is an attempt to create a php book for beginniers by the community. It aims to provide high quality good learning material to the very beginners sourcing the knowledge of the community, rather than a single author.

Editting this book
------------------
General guidlines about what to do and how to make this book a perfect learning experience for beginners are described in the ["Write a chapter"](http://book.phpguide.co.il/%D7%A2%D7%A8%D7%99%D7%9B%D7%AA-%D7%94%D7%A1%D7%A4%D7%A8.html) chapter.

Technical how-to
----------------
This book is a static generated content using [docpad](http://docpad.org/). It has a built in editor for text and code we can use to write the chapters, but making it not very trivial for a php developer.
Docpad is a javascript application running on top of node.js, therefore you'll need a server with node.js installed. I completely understand this is not trivial and may reduce the amount of people able to contribute, but this threshold might also keep wanna-be's away.
Anyway, I'd happily convert it to run on a php static site generator, such as Phrozn or Sculpin if those would provide interactive editting ability like does this one. 

Setup
------------
1. Install `nodejs`  
on Debian: `sudo apt-get install nodejs npm`  
on Centos: `yum install nodejs npm`  
on Windows:[Download](http://nodejs.org/download/), click next, next

2. Run npm install
`npm install`

3. Run the project: Double click on `run.bat`
This will also work on unix from shell: just `./run.bat`.


That's it, the site and admin panel are ready.  
[Site: http://localhost:9778](http://localhost:9778)  
[Admin: http://localhost:3000](http://localhost:3000)  


Please submit your pull requests via github.
In case of any problems do not hesistate to email me at `Alex@phpguide`
