#!/bin/bash

pathactual=$(pwd)

export PYTHONPATH=${PYTHONPATH}:$pathactual/:$pathactual/src/lib/

python src/main.py
