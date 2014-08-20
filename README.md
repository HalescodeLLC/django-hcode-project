django-hcode-project
========================

A project template for Django

To use this project follow these steps:

1. Create your working environment
2. Install Django
3. Create the new project using the django-hcode-project template
4. Install additional dependencies
5. Use the Django admin to create the project

*note: these instructions show creation of a project called "killerapp".  You
should replace this name with the actual name of your project.*

Working Environment
===================

You have several options in setting up your working environment.  We recommend
using virtualenv to separate the dependencies of your project from your system's
python environment.  If on Linux or Mac OS X, you can also use virtualenvwrapper to help manage multiple virtualenvs across different projects.

Virtualenv Only
---------------

First, make sure you are using virtualenv (http://www.virtualenv.org). Once
that's installed, create your virtualenv::

    $ virtualenv killerapp

You will also need to ensure that the virtualenv has the project directory
added to the path. Adding the project directory will allow `django-admin.py` to
be able to change settings using the `--settings` flag.

Virtualenv with virtualenvwrapper
------------------------------------

In Linux and Mac OSX, you can install virtualenvwrapper (http://virtualenvwrapper.readthedocs.org/en/latest/),
which will take care of managing your virtual environments and adding the
project path to the `site-directory` for you::

    $ mkdir killerapp
    $ mkvirtualenv -a killerapp killerapp-dev
    $ cd killerapp && add2virtualenv `pwd`

Using virtualenvwrapper with Windows
----------------------------------------

There is a special version of virtualenvwrapper for use with Windows (https://pypi.python.org/pypi/virtualenvwrapper-win).::

    > mkdir killerapp
    > mkvirtualenv killerapp-dev
    > add2virtualenv killerapp


Installing Django
=================

To install Django in the new virtual environment, run the following command::

    $ pip install django

Creating your project
=====================

To create a new Django project called '**killerapp**' using
django-hcode-project, run the following command::

    $ django-admin.py startproject --template=https://github.com/peter-stratton/django-hcode-project/archive/master.zip --extension=py,rst,html killerapp

For Django 1.6 users, we recommend::

    $ django-admin.py startproject --template=https://github.com/peter-stratton/django-hcode-project/archive/django1.6.zip --extension=py,rst,html killerap

Installation of Dependencies
=============================

Depending on where you are installing dependencies:

In development::

    $ pip install -r requirements/local.txt

For production::

    $ pip install -r requirements.txt

*note: We install production requirements this way because many Platforms as a
Services expect a requirements.txt file in the root of projects.*

Acknowledgements
================

Based on the django-twoscoops-project

.. _contributors: https://github.com/twoscoops/django-twoscoops-project/blob/master/CONTRIBUTORS.txt

