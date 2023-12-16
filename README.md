[![INFORMS Journal on Computing Logo](https://INFORMSJoC.github.io/logos/INFORMS_Journal_on_Computing_Header.jpg)](https://pubsonline.informs.org/journal/ijoc)

# Solving Bilevel Programs Based on Lower-level Mond-Weir Duality

This archive is distributed in association with the [INFORMS Journal on
Computing](https://pubsonline.informs.org/journal/ijoc) under the [GNU General Public License v3.0](LICENSE).

This repository contains supporting materials for the paper
[Solving Bilevel Programs Based on Lower-level Mond-Weir Duality](https://doi.org/10.1287/ijoc.2023.0108) by Y. W. Li, G. H. Lin and X. Zhu. 

The software and data in this repository are a snapshot of the software and data that were used in the research reported in the paper.

## Cite

To cite the contents of this repository, please cite both the paper and this repo, using their respective DOIs.

https://doi.org/10.1287/ijoc.2023.0108

https://doi.org/10.1287/ijoc.2023.0108.cd

Below is the BibTex for citing this snapshot of the repository.

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

The goal of this repository is to provide a large number of numerical examples to illustrate the effectiveness of solving bilevel programs based on lower-level Mond-Weir duality.

## Repository Structure

### Code

This paper solves bilevel programs by direct and relaxation methods of four reformulations, namely, eMDP, MDP, MPCC, and WDP.

The folder [code](code) contains four types of files: generation of linear bilevel programs ( [problem](code/problem.m) ), objective functions ( [fun](code/fun.m) ), constraints, and main programs. An example is as follows:

- [main_eMDP](code/main_eMDP.m) is the main program for solving bilevel programs by the direct method for eMDP.

- [constraints_eMDP](code/constraints_eMDP.m) is the constraint program for solving bilevel programs by the direct method for eMDP.

- [main_ReMDP](code/main_ReMDP.m) is the main program for solving bilevel programs by the relaxation method for eMDP.

- [constraints_ReMDP](code/constraints_ReMDP.m) is the constraint program for solving bilevel programs by the relaxation method for eMDP.


### Data

All the necessary [data](data) for replicating the experiments is included within the code.

### Results

The [results](results) consist of two parts: one is the detailed numerical results in solving bilevel programs using four methods, and the other is the results in analyzing them.

Tables 1 & 2 show the analytical results of the detailed numerical results [Tables 3-17](results/Table_3-17_Detailed_numerical_results.pdf), which are in the numerical experiments section of the paper. 

- [Table 1](results/Table_1_Comparison_of_three_relaxation_schemes_MDP1,_MDP2,_and_MDP3.pdf) shows the comparison results of three relaxation schemes for MDP. 

- [Table 2](results/Table_2_Comparison_of_MDP_and_eMDP_with_MPCC_and_WDP.pdf) shows the comparison results of four methods.
  
[Tables 3-17](results/Table_3-17_Detailed_numerical_results.pdf) show detailed numerical results, but are not included in the paper due to their length. 

- Tables 3-5 show the numerical results derived from three relaxation schemes for MDP.
  
- Tables 6-8 show the numerical results derived from relaxation and direct schemes for MPCC.
 
- Tables 9-11 show the numerical results derived from relaxation and direct schemes for WDP.
 
- Tables 12-14 show the numerical results derived from relaxation and direct schemes for MDP, where the relaxation scheme is the first relaxation scheme in Tables 3-5.

- Tables 15-17 show the numerical results derived from relaxation and direct schemes for eMDP.


## Requirements
All optimization problems are solved using MATLAB 9.13.0.

## Support

For support in using the code, don't hesitate to get in touch with the corresponding author.
