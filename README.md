[![INFORMS Journal on Computing Logo](https://INFORMSJoC.github.io/logos/INFORMS_Journal_on_Computing_Header.jpg)](https://pubsonline.informs.org/journal/ijoc)

# Solving Bilevel Programs Based on Lower-level Mond-Weir Duality

This archive is distributed in association with the [INFORMS Journal on
Computing](https://pubsonline.informs.org/journal/ijoc) under the [GNU General Public License v3.0](LICENSE).

This repository contains supporting material for the paper
[Solving Bilevel Programs Based on Lower-level Mond-Weir Duality](https://doi.org/10.1287/ijoc.2023.0108) by Y. W. Li, G. H. Lin and X. Zhu. 

The software and data in this repository are a snapshot of the software and data that were used in the research reported on in the paper.

## Cite

To cite the contents of this repository, please cite both the paper and this repo, using their respective DOIs.

https://doi.org/10.1287/ijoc.2023.0108

https://doi.org/10.1287/ijoc.2023.0108.cd

Below is the BibTex for citing this snapshot of the respoitory.

```
@article{Li2023.0108,
  author =        {Yu-Wei Li and Gui-Hua Lin and Xide Zhu},
  publisher =     {INFORMS Journal on Computing},
  title =         {Solving Bilevel Programs Based on Lower-level Mond-Weir Duality},
  year =          {2023},
  doi =           {10.1287/ijoc.2023.0108.cd},
  url =           {https://github.com/INFORMSJoC/2023.0108},
}  
```

## Description

The goal of this repository is to illustrate the effectiveness of solving bilevel programs based on the lower-level Mond-Weir duality.


## Repository Structure

### Code

This paper solves the bilevel programs by direct and relaxation methods of four reformulations, namely, MDP, eMDP, MPCC, and WDP.

The folder [code](code) contains four types of files: generation of linear bilevel programs( [problem](code/problem.m) ), objective functions( [fun](code/fun.m) ), constraints, and main programs. An example is as follows:

- [main_MDP](code/main_MDP.m) is the main program that solves the bilevel programs by the MDP direct method.

- [constraints_MDP](code/constraints_MDP.m) is the constraint program for solving bilevel programs by the MDP direct method.

- [main_RMDP](code/main_RMDP.m) is the main program that solves the bilevel programs by the MDP relaxation method.

- [constraints_RMDP](code/constraints_RMDP.m) is the constraint program for solving bilevel programs by the MDP relaxation method.


### Data

All the necessary [data](data) for replicating the experiments is included within the code.

### Results

The [results](results) consist of two parts: one is the detailed numerical results of solving the bilevel programs using the four methods, and the other is the results of analyzing them.

Tables 1 & 2 shows the analytical results of the detailed numerical results [Tables 3-17](results/Table_3-17_Detailed_numerical_results.pdf), which are in the numerical experiments section of the paper. 

- [Table 1](results/Table_1_Comparison_of_three_relaxation_schemes_MDP1,_MDP2,_and_MDP3.pdf) shows the comparison results of three relaxation schemes for MDP. 

- [Table 2](results/Table_2_Comparison_of_MDP_and_eMDP_with_MPCC_and_WDP.pdf) shows the comparison results of four methods.
  
[Tables 3 - 17](results/Table_3-17_Detailed_numerical_results.pdf) show detailed numerical results, but are not included in the paper due to their length. 

- Tables 3- 5 show the numerical results for the three relaxation schemes for the MDP. 
- Tables 6 - 8 show the numerical results for relaxation and direct MPCC. 
- Tables 9 - 11 show the numerical results for relaxation and direct WDP. 
- Tables 12 - 14 show the numerical results for relaxation and direct MDP, where is the first relaxation of MDP, i.e.,RMDP1. 
- Tables 15 - 17 show the numerical results for relaxation and direct eMDP.


## Requirements
All optimization problem are solved using MATLAB 9.13.0.

## Support

For support in using the code, please contact the corresponding author.
