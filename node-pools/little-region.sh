#!/bin/sh
gcloud container node-pools create little-region-`date +"%Y-%m-%d"` \
	--cluster=alice \
	--disk-size=100 \
	--machine-type=f1-micro \
	--num-nodes=1 \
	--zone=asia-northeast1-a \
	--scopes=bigquery,storage-rw,compute-ro,datastore,default
