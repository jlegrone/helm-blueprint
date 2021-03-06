#!/bin/bash

help() {
  cat << EOF
Manage your Helm "starter" blueprints.

A helm starter is a blueprint for creating a new chart.
Starters themselves are helm charts; some examples are
available here:

https://github.com/jlegrone/helm-blueprints

Usage:
  helm starter add [STARTER_CHART] <flags>
  helm starter list
  helm starter remove [STARTER_CHART]
  helm starter create-from [STARTER_CHART] [NEW_CHART]

Example:
  helm repo add blueprints https://jlegrone.github.io/helm-blueprints
  helm starter install blueprints/openshift
  helm create mychart --starter blueprints/openshift

Available Commands:
  add          add a Helm starter
  list         list installed Helm starters
  remove       remove a Helm starter
  create-from  create a chart using another chart as a template
EOF
}
