#!/bin/bash

# Directory where Tomcat should be installed
tomcat_dir="/tmp/tomcat"

# Check if the directory exists
if [ -d "$tomcat_dir" ]; then
  echo "Directory '$tomcat_dir' exists. Installing Tomcat..."
  
  # Download and extract Tomcat to /tmp/tomcat
  wget -O /tmp/apache-tomcat.tar.gz http://apache.mirrors.lucidnetworks.net/tomcat/tomcat-9/v9.0.55/bin/apache-tomcat-9.0.55.tar.gz
  tar -xzf /tmp/apache-tomcat.tar.gz -C /tmp

  # Rename the extracted directory to /tmp/tomcat
  mv /tmp/apache-tomcat-* "$tomcat_dir"

  echo "Tomcat installed successfully in '$tomcat_dir'."
else
  echo "Directory '$tomcat_dir' does not exist. Tomcat will not be installed."
fi

echo "Script completed."

