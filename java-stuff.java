# How to change the port of tomcat from 8080 to 80?
# http://stackoverflow.com/questions/4756039/how-to-change-the-port-of-tomcat-from-8080-to-80

- Go to conf folder in tomcat installation directory and Edit server.xml
- Change the port=8080 value to port=80
- Save file.

$ emacs /var/lib/tomcat7/conf/server.xml

<Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443"/>

- On a Linux Debian-based (so Ubuntu included) you have also to go to /etc/defaults/tomcat7, uncomment the #AUTHBIND=no line and set its value to 'yes', in order to let the server bind on a privileged port.


----------------------------

# How do I make my web application be the Tomcat default application?
# http://wiki.apache.org/tomcat/HowTo#How_do_I_make_my_web_application_be_the_Tomcat_default_application.3F

------------------------------

# How to make your domain directly point to the main.html
Just rename your WAR file as ROOt.WAR and remove the older ROOT Folder.
http://stackoverflow.com/questions/1363605/tomcat-base-url-redirection


-----------------------------
