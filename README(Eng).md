# ElectraZayavka 
This application based on microsoft acess vba.It was made for pass office 
of the Russian Children Clinical Hospital where i'm working as medical information system specialist. 
This application significantly simplified process of the the process of analyzing and agreeing to 
pass applications as the process of getting pass in the pass office to owner. 
Application runs almost year, and got a lot of changes since the first realise. 
Now, This application uses over 150 users in RCCH Main characteristics of the application:
1. Application runs well in windows XP,7,10. But it's need an installed microsoft access 2007 or higher
2.Application provides 5 levels of access: 

  2.1 Usal User Access. That level of access is given to more than 90% of users. 
  Usal User can create application for a pass, and also can find pass applications 
  (only of a particular department the user is listed) and check state approval status of them. 
  Every Usal User is linked to particular department and do any action (creating     app. for a pass, find app for a pass) 
  Within it. Usal User can't find/create app. for a pass of other departments. 
  
  2.2 User (Human Resources Department) access. This user can do any action, that can do Usal User. 
  But also, this user participates in the approval of applications for permanent passes for those people who get a job at the RCCH. 
  User also can find and check any app. for pass of that type for any Department. 
  
  2.3 User (Pass Office Officer) access. This user can create/find app. for pass for any department, 
  can print pass (if the app. for printed pass is agreed), and also set list of the departments, job list 
  
  2.4 User (PassOffice-Admin). This user can do any action, that can do User in 2.3.
  But also, this user is involved in the approval of all app. for passes. 
  Besides, he can cancel permanent passes, Archive the base, slightly customize the appearance of the transport pass. 
  check online users, create message for users and create a report in Excel for a certain period of time. 
  
  2.5 User (MainAdmin). This user can do any action, that can do User in 2.3, but also he can set up 
  BackUpping settings ,create/delete/change users, kick users from the programm.
  
All Users Can create their own cheblons of app. for pass, can set their own password, On/Off automatic login
This Programm is working with SendMail. SendMail runs after creation app. for a pass. 
It send mail to the head of the pass bureau, that contain information about created app. for a pass. 
Special MailBox, that's getting such mail is configurued in mobilePhone of the head of the pass bureau, thus, 
he got the information about creation app. for a pass even if he is not connected to the system. 
