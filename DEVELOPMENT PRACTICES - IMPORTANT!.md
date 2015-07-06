#BIMportal BETA release

##3 Month Development Period Goals

The period for development is estimated at 3 months. By the conclusion of this period we need to:

* Install all existing code into new infrastructure framework (existing code forked here https://github.com/BIMscript/portal_PoC)
* Ensure all additional code is written in SOA (node ecosystem)
* Remove users dependency on BIMscript as webmasters managing their data (ie move webmaster end UI functions to the user end)
* Give extra functionality to the user to manage their data (see points below)
* Create ability for users to create projects, become project admins and add users to the project
* There will be 3 types of user: webmaster (BIMscript), admin (project admin), user
* Revise BIMscript’s role to system administrators only
* Swap out BIMsync model viewer and data (IFC) handling APIs for open technologies BIMserver, BIMsurfer, BIMvie.ws
* Fix bugs
* Clean up, correct and optimise all existing code
* Create black boxes of existing code
* Translate as much code from PHP to JS
* Clear all databases of development data
* Create a revised GUI for BETA release, removing all VolkerFitzpatrick branding and colour scheme.

Alongside these goals, we need to get a full and comprehensive understanding of how all the code works and interacts and begin to document/comment the code.

Every development point and bug will be listed as an issue to resolve. Should people add issues please use the following tag identifiers and then choose the appropriate label for the issue inside github (ie. bug/enhancement):

* BUG - 'this is a bug'
* BACK-END - 'this is a development for the back end'
* FRONT-END - 'this is a development for the front end'
* GUI - 'this is a graphical development'
* UX - 'this is a useability development'

## DevOps Working Practices

####Technology Stack

Currently, the platform is written in the LAMP stack (Linux, Apache, MySQL, PHP). 
We want to re-write the platform into a modern technology stack based on the MEAN stack (MongoDB, Express, AngularJS, and Node.js) but with React.JS at the front end.

#### Test Driven Development.

Always design your tests for the new code and then develop. Make sure you think of extreme cases for inputs to see what happens.

####Code commenting

Make sure that code is commented (use judgement to decide when is neccessary, good judgement... not bad judgement)

####Clean code on the fly

As you write or go through the code, clean up any mistakes (even in the comments!) and try to optimise wherever possible. All existing code written in PHP needs to be black boxed.
