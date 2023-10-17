# Installation

[RubyLang](https://www.ruby-lang.org/en/) is a complete site about Ruby where we can find installers, documentation, gems (libraries), community (blogs, podcasts, videos, etc.), news and more.

## Windows Installation

To install Ruby in Windows, we can visit this [downloads section](https://www.ruby-lang.org/en/documentation/installation/#rubyinstaller) and download the installer. You can also visit the official website [RubyInstaller.org](https://rubyinstaller.org/).

Within the official page of the installer we can find the latest versions of Ruby such as version 3.2.2, which is the latest stable version at the time of writing this document and the one we will use during the course.

## Linux Installation (Debian or Ubuntu)

Within the section [apt (Debian o Ubuntu)](https://www.ruby-lang.org/en/documentation/installation/#apt) we can follow the steps listed by executing each command to install Ruby. You can do the same for other Linux distributions such as CentOS, Fedora, Arch Linux, Gentoo, etc. right there in the same section.

## macOS Installation

For macOS we can visit this [downloads section](https://www.ruby-lang.org/en/documentation/installation/#homebrew) and follow the steps listed to install Ruby using homebrew.

## Installation using rbenv (my favorite one)

Rbenv is a version manager for Ruby for Unix-based systems. It is very useful as we can easily install and switch between different versions of Ruby. This is the official [Github](https://github.com/rbenv/rbenv).


```bash
# Install rbenv for macOS using brew
brew install rbenv ruby-build

# Install rbenv for Debian/Ubuntu using apt
sudo apt install rbenv

# Initialize rbenv
rbenv init

## Close the terminal and open it again to load rbenv

# Install the desired version of Ruby
rbenv install 3.2.2

# Set that version as the global/default
rbenv global 3.2.2

# Verify the ruby version
ruby -v

# Rehash to update the PATH and use the installed Ruby version
rbenv rehash
```
