Open, crowd-source written php book in hebrew for beginners
===================

book.phpguide.co.il is an attempt to create a php book for beginniers by the community. It aim's to provide high quality good learning material to the very beginners sourcing the knowledge of the community, rather than a single author.

Editting this book
------------------
General guidlines about what to do and how to make this book a perfect learning experience for beginners are described in the ["Write a chapter"](http://book.phpguide.co.il/%D7%A2%D7%A8%D7%99%D7%9B%D7%AA-%D7%94%D7%A1%D7%A4%D7%A8.html) chapter.

Technical how-to
----------------
This book is a static generated content using [docpad](http://docpad.org/). It has a built in editor for text and code we can use to write the chapters, but making it run is not very trivial.
Docpad is a javascript application running on top of node.js, therefore you'll need a server with node.js installed. I completely understand this is not trivial and may reduce the amount of people able to contribute, but this threshold might also keep wanna-be's away.
Anyway, I'd happily convert it to run on a php static site generator, such as Phrozn or Sculpin if thore would enable interactive editting like this one. 

Setup
------------
1. Install `nodejs`  
on Debian: `sudo apt-get install nodejs npm`  
on Centos: `yum install nodejs npm`  
on Windows: erm..  
[more instructions if you need here](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager)  


2. Fork and clone this repository to your machine  

3. Navigate to the folder on your machine and install the node modules    
`sudo npm install`

4. Run the project: `(cd dce/dce && node app)`  
[Dce](https://github.com/cauld/docpad-plugin-dce) is the docpad editor plugin I use for the book editting and it's shipped within the repository.  
You can manually `cd` to it and just run `node app` within the `dce/dce` subdirectory  

5. Visit your site at `localhost:9778` and the editting panel at `localhost:3000`  

6. After bringing it to perfection, commit and push the changes to your repository and open a pull request via github. 

7. Wait for me to deploy it to `github pages` and bring it online. Should take about 48 hours after your pull request.


In case of any problems do not hesistate to email me at `Alex@phpguide`






