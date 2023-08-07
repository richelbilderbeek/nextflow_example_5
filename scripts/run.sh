#!/bin/bash
#
# Run the Nextflow pipeline.
#
# Usage:
#
#   ./scripts/run.sh
#
# This script determines JAVA_HOME and prevents the error below.
#
# ERROR: Cannot find Java or it's a wrong version -- please make sure that Java 8 or later (up to 18) is installed
# NOTE: Nextflow is trying to use the Java VM defined by the following environment variables:
#  JAVA_CMD: /usr/bin/java
#  JAVA_HOME: 
#
export JAVA_HOME=$(readlink -f `which javac` | sed "s:/bin/javac::")
nextflow run main.nf -with-singularity library://mcenirm/tutorial/fortune-cowsay-lolcat:latest