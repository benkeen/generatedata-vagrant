## generatedata-vagrant

This is a prepackaged installation of the standalone version of generatedata.com, using Vagrant, a development
environment builder.

### How to install

If you not already using Vagrant, follow these steps:

1. Download Vagrant: https://www.vagrantup.com/downloads.html
2. Install a provider, e.g. VirtualBox: https://www.virtualbox.org/wiki/Downloads
3. On the command line, install a box, e.g. `vagrant box add precise32 http://files.vagrantup.com/precise32.box`

Next:

1. Clone this repository.
2. On the command line, to to the generatedata-vagrant folder and run `vagrant up`. (Note, this requires the use of port
8888. This is configurable, however). The first time you run this command, it will take a few minutes. Also, the script
ends with a non-zero status, which may look like an error. It isn't.
3. Load up `http://localhost:8888` in your browser. This should show you the installation script.
4. For the database settings, enter:

- Database: generatedata
- Username: root
- Password: pass

Then just click through the remainder of the installation steps.


### Thanks!

A big thanks to [Daragh Courtney](https://github.com/daraghc) for getting this all working.
