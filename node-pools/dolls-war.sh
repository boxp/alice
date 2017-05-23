#!/bin/sh
gcloud container node-pools create dolls-war-`date +"%Y-%m-%d"` \
	--cluster=alice \
	--disk-size=100 \
	--preemptible \
	--machine-type=n1-standard-1 \
	--num-nodes=3 \
	--zone=asia-northeast1-a \
	--scopes=bigquery,storage-rw,compute-ro,datastore,default
