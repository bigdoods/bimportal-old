Please find the list of changes and developments to do for beta release:

##Development

####Back-End

The most significant change will be to change a lot of the current functionality which is exclusively admin and give that functionality to users. We need to develop ourselves (BIMscript admins) out of the system so that the BIMportal can be used standalone by users. 

BIMscript admins new role will be to manage the system, and not the content of the system.
Users will be able to create projects and add users to join.

1.  Install portal PoC onto new infrastructure (forked https://github.com/BIMscript/portal_PoC)
2.  Swap out Catenda's BIMsync Model Viewer and IFC data handling to BIMserver/BIMsurfer/BIMvie.ws (all forked)
3.  Create automatic User registration without need for BIMscript to verify or add users to projects
4.  Users can create projects
5.  Users who create projects become admin of projects and can add users to projects
6.  Remove "File/Item Request" app
7.  Integrate Timeline JS into our timeline (forked https://github.com/BIMscript/TimelineJS)

####User Front-End

1.  Change abilities from admin end (all upload files, issues, renders) to user end
2.  Remove "Request An Item" from toolbar
3.  Move "Upload An Item" from toolbar to be a button inside the "File Manager"
4.  Remove "Help" from toolbar
5.  Inside "Project Team" App, install button to invite users to project

####Admin Front-End

1.  Remove "View Requests" from toolbar
2.  Remove "Renders" from toolbar
3.  Remove "Issues" from toolbar

##Bugs

1.  Items from within one project need to be separate from others. Timeline is displaying multiple projects together.
2.  Sent chats sometimes appear twice

##GUI

1.  Remove logo
2.  Change colour scheme
