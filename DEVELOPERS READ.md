##BIMportal BETA release - Development

The period for development is estimated at 3 months. By the conclusion of this period we need to:

* Install all existing code into new infrastructure framework (forked https://github.com/BIMscript/portal_PoC)
* Ensure all additional code is written in SOA (node ecosystem)
* Remove users dependency on BIMscript as webmasters managing their data (ie move webmaster end UI functions to the user end)
* Give extra functionality to the user to manage their data
* Create ability for users to create projects, become project admins and add users to the project
* There will be 3 types of user: webmaster (BIMscript), admin (project admin), user
* Revise BIMscript’s role to system administrators only
* Swap out BIMsync model viewer and data (IFC) handling APIs for BIMserver, BIMsurfer, BIMvie.ws
* Fix bugs
* Clean up all code that is possible (create black boxes)
* Clear all databases of development data
* Create a revised GUI for BETA release

Alongside these goals, we need to get a full and comprehensive understanding of how all the code works and interacts. 

Every development point and bug will be listed as an issue to resolve. Should people add issues please use the following tag identifiers and then choose the appropriate label for the issue inside github:

* BUG - 'this is a bug'
* BACK-END - 'this is a development for the back end'
* FRONT-END - 'this is a development for the front end'
* GUI - 'this is a graphical development'
* UX - 'this is a useability development'

## Working Practices

#### 1 - Test Driven Development.

Always design your tests for the new code and then develop. Make sure you think of extreme cases for inputs to see what happens.

#### 2 - Code commenting

Make sure that code is commented (use judgement to decide when is neccessary, good judgement... not bad judgement)

#### 3 - Clean code on the fly

As you write or go through the code, clean up any mistakes (even in the comments!) and try to optimise wherever possible.

#### 4 - Write new code in node.JS or other JS

We want to migrate the PHP code over to nodeJS and other JS related, SOA code. Any new code should help this migration! Obviously, we want the right code for the right places, so make good calls on what should be re-written and what can be black boxed as a function.
