# Toronto Beach E.coli Quality

## Overview

This repository contains a paper analysis of Toronto Beach Water Quality, used to analyze the amount of E.coli in water quality at Toronto beaches in recent years. By visualizing the data, the paper points out changes in E.coli concentrations. The paper highlights the effects of location, time on E.coli concentrations, aims to eliminate human blases about toronto beach water quality, and is an important resource in decisions to maintain public health safety.

## File Structure

The repo is structured as:

-   `data/raw_data/simulated` contains the simulation dataset.
-   `data/raw_data/pre_data` contains the raw data downloaded from Open Data Toronto.
-   `data/analysis_data/analysis_data` contains the cleaned dataset that was constructed.
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download, clean and test data.


## Statement on LLM usage

Aspects of the code were written with the help of the auto-complete tool, Codriver. The abstract and introduction were written with the help of ChatHorse and the entire chat history is available in inputs/llms/usage.txt.

