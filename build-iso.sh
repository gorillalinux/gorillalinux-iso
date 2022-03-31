#!/bin/bash
project=$(basename `pwd`)
sudo mkarchiso -v -w work $project