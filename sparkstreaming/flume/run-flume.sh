#!/bin/sh

echo "Start flume ..."
flume-ng agent --conf conf --conf-file job.config --name a1 -Dflume.root.logger=DEBUG,console
