name 'appium'
maintainer 'Dennis Hoer'
maintainer_email 'dennis.hoer@gmail.com'
license 'MIT'
description 'Installs/Configures Appium'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.0'

supports 'mac_os_x'
supports 'centos'
supports 'redhat'
supports 'ubuntu'

#depends 'java', '~> 1.42'
#depends 'homebrew', '~> 2.1'
depends 'nodejs', '~> 3.0'
