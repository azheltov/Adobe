## Administer and Securely Maintain Adobe Experience Manager v6:
## Module 01 Manage AEM Packages

## The content package used to upload via command line is the ACS Commons tools.

## Learn more: https://adobe-consulting-services.github.io/acs-aem-commons/

## Download the latest release: https://github.com/Adobe-Consulting-Services/acs-aem-commons/releases

 

## List all commands

curl -h

 

## List optional commands

curl -u admin:admin http://localhost:4502/crx/packmgr/service.jsp

 

## List all packages in Package Manager

curl -u admin:admin http://localhost:4502/crx/packmgr/service.jsp?cmd=ls

 

## Upload ACS Commons

curl -u admin:admin -F package=@acs-aem-commons-content-4.0.0-min.zip http://localhost:4502/crx/packmgr/service/.json/?cmd=upload

 

## Install ACS Commons

curl -u admin:admin -X POST http://localhost:4502/crx/packmgr/service/.json/etc/packages/adobe/consulting/acs-aem-commons-content-4.0.0.zip?cmd=install

 

## Download the ACS Commons Content Package

curl -u admin:admin http://localhost:4502/etc/packages/adobe/consulting/acs-aem-commons-content-4.0.0.zip > downloaded-acs-aem-commons-content-4.0.0.zip

 

## Delete a Content Package

(Optional command)

curl -u admin:admin -X POST http://localhost:4502/crx/packmgr/service/.json/etc/packages/adobe/consulting/acs-aem-commons-content-4.0.0.zip?cmd=delete
