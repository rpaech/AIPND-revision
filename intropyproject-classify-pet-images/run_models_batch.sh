#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch.sh
#                                                                             
# PROGRAMMER: Jennifer S.
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - 
# PURPOSE: Runs all three models to test which provides 'best' solution.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch.sh    -- will run program from commandline within Project Workspace
#  
python check_images.py --dir pet_images/ --arch resnet  --dogfile dognames.txt > test-pet_images-resnet.txt
python check_images.py --dir pet_images/ --arch alexnet --dogfile dognames.txt > test-pet_images-alexnet.txt
python check_images.py --dir pet_images/ --arch vgg  --dogfile dognames.txt > test-pet_images-vgg.txt