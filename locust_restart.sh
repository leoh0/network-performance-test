#!/bin/bash
for x in `kubectl get pods | grep nodejs-tester | awk '{print $1}'`;do kubectl delete pods $x; done;
