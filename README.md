# ubuntu-mongodb-installer
Guided installation of mongodb with settings and auth setup.


## Use Cases / User Scenario

As a [stakeholder?] I want to install a mongodb on my new instance with one command.

**Start setup**

When executing `mongo-setup.sh` the installation fetches information about the **latest stable** mongo db,
which can be from the official repo or from the mongo repo (depending on which is the official latest stable).

**Select version**

The shell prompt asks me to provide a mongodb version number with the latest stable as prefilled default.
This step cannot be skipped when 

**Set option**

The shell also asks me to 

* let the `mongod service` to autostart on server boot. I can enter `y` or `n`, where the default is `y`.
* use authentication (y/n)
* use encryption (y/n)
...add more options here (permissions, unix user/group that own/execute)


**Add admin (required: use auth = yes)**

Next the shell asks me to provide an administrator name and password, which I need to re-enter to confirm. 
If the password is too weak or does not match the confirm, the step repeats until valid.

**Add databases**

Next the installer asks me, if I want to add databases. I can enter names and confirm each name with enter.
The installer asks me again, until I enter `n(=no)`.

**Add users (required: use auth = yes)**

Next the shell asks me, if I want to add more users with restricted permissions?
If I answer yes, the setup will provide me a similar prompt for adding a new user.

To add a new user I need to provide:

* username
* password
* confirm password
* databases and permissions
* what else?

A short confirmation screen shows me the summary of the user and asks me to confirm or cancel.
If the user is successfully added, the installer will ask me to add another user until I enter `n(=no)`


**Confirm setup**
If I answer with no, the setup will show me a summary screen of all the intended setup settings.
I can enter `install` to confirm 