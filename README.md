# Deep Learning-Based Erlang Refactoring

This repository contains a proof-of-concept method for refactoring nonidiomatic Erlang code.

This is the implementation of the presented method in the following paper: 
**Balázs Szalontai, Péter Bereczky and Dániel Horpácsi**, 
*"Deep Learning-Based Refactoring with Formally Verified Training Data"*, 
Infocommunications Journal, Special Issue on Applied Informatics, 2023, pp. 2-8, https://doi.org/10.36244/ICJ.2023.5.1

## Repository Structure

Experiments were conducted on Google Colaboratory, thus all Python files are notebooks. To run the notebooks, make sure to adjust paths in notebooks, if necessary. 

- `Finder.ipynb`: Implementation of the localizer.
- `Idiomatizer.ipynb`: Implementation of the idiomatizer.
- `Prototype.ipynb`: Refactoring approach, evaluations, and experiments.
- `Finder_func.ipynb`, `Idiomatizer_func.ipynb`, `Common_functions.ipynb`: Utility functions for localization and idiomatization.
- `pprint.erl`, `tok.erl`: Pretty printer and tokenizer implemented in Erlang.

## Dataset

The two training datasets can be accessed on HuggingFace [here](https://huggingface.co/datasets/szalontaib/erlang-refactoring).
These csv files should be moved to `src/dataset`.
