##BIMportal BETA release - Development

The period for development is estimated at 1 to 2 months. By the conclusion of this period we need to:

* Install all existing code into new infrastructure framework
* Ensure all additional code is written in SOA
* Remove users dependency on BIMscript as webmasters managing their data
* Give extra functionality to the user to manage their data
* Create ability for users to create projects, become project admins and add users to the project
* There will be 3 types of user: webmaster (BIMscript), admin (project admin), user
* Revise BIMscript’s role to system administrators only
* Swap out BIMsync model viewer and data (IFC) handling APIs for BIMserver, BIMsurfer, BIMvie.ws
* Fix bugs
* Clean up all code that is possible (create black boxes?)
* Clear all databases of development data
* Create a GUI for general release

Alongside these goals, we need to get a full and comprehensive understanding of how all the code works and interacts. Please find a more detailed list of development below:

####Back-End

1. Install BIMportal PoC onto new infrastructure (forked https://github.com/BIMscript/portal_PoC)
2. Remove Catenda BIMsync model viewer/IFC handler API integration
3. Install BIMserver as the IFC handler (forked https://github.com/BIMscript/BIMserver)
4. Install BIMvie.ws as the model viewer (forked https://github.com/BIMscript/bimvie.ws)
5. Make user registration automatic (user registers, receives email, verifies email, registration complete)
6. Users to be create project and become admin
7. Users to be able to add users to a project they are admin of
8. Remove “File/Request” app completely
9. Move all functionality for “Projects”, “Issues”, “Renders” and “File Upload” from webmaster to user
10. Ensure project data cannot be seen from one project to another.
11. Clean up code
12. Clean up databases

####Front-End

1. Remove “Help” from toolbar
2. Remove “Upload an Item” and “Request an Item” from toolbar and relocate them to within the “File Manager”
3. Create a GUI for general release (non-company specific)
4. Inside “Project Team” add button to invite users to project (if admin)
5. Add 3D model option to “Upload an Item”

####Bugs

1. Timeline is displaying all projects inside a project
2. Sent chats are sometimes appearing twice
3. GUI responsivity is not working great on webmaster end
