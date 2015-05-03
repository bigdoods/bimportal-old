#!/usr/bin/env bats

@test "docker version exit with zero" {
  docker version
  [ "$?" -eq 0 ]
}

@test "docker version is at least 1.6.0" {
  local version=$(docker version | grep "Server version" | sed 's/Server version: //')
  [ `echo $version |cut -d'.' -f1` -gt 0 ]
  [ `echo $version |cut -d'.' -f2` -gt 5 ]
}