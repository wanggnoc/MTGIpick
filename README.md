##<font color=red>***MTGIpick***</font>

####**MTGIpick Enables Robust Identification of Genomic Islands from a Single Genome**
======

######Qi Dai*, Cong Wang, Chaohui Bao, Sheng Ma, Yabing Hai, Yunfei Wang, Xiaoqing Liu, Yuhua Yao, Wenwen Huo, Zhenyu Xuan, Min Chen* and Michael Q Zhang*. MTGIpick enables robust identification of genomic islands from a single genome.</br>To be submitted to Nucleic Acids Research.</br>Version 05  March  2015
######Qi Dai</br>College of Life Sciences,</br>Zhejiang Sci-Tech University, Hangzhou 310018,</br>China

###Contents
#####1. Overview

#####2. Obtain MTGIpick software and install
&nbsp;&nbsp;&nbsp;2.1Requirements</br>
&nbsp;&nbsp;&nbsp;2.2Download</br>
&nbsp;&nbsp;&nbsp;2.3Install and Run</br>
#####3. Tutorial 
&nbsp;&nbsp;&nbsp;3.1.Functions and features</br>
&nbsp;&nbsp;&nbsp;3.2.Input</br>
&nbsp;&nbsp;&nbsp;3.3.Methods</br>
&nbsp;&nbsp;&nbsp;3.4.Outputs</br>
#####4. References 
###1. Overview
　　MTGIpick is a software that implements multiscale statistical algorithm to predict genomic islands from a single genome. It uses small-scale test with large-scale features to score small region deviating from the host and large-scale statistical test with small-scale features to identify multi-window segments for identification of genomic islands. MTGIpick can identify genomic islands from a single genome, without annotated information of genomes or prior knowledge from other datasets. In simulations with alien fragments from artificial and real genomes, MTGIpick reported robust results across different experiments. From real biological data, MTGIpick demonstrated better performance compared with existing methods, and identified genomic islands with more accurate size.</br>
　　MTGIpick was written in Matlab and Java, compiled in Windows，Linux and Mac, and run on those platforms. We have supplied a version of MTGIpick. The output of MTGIpick consists of the genomic signatures, score of each region and predicted genomic islands.</br>
　　Contact:  daiailiu04@yahoo.com</br>

###2. Obtain and install
#####2.1. Requirements
　　MTGIpick has been compiled and tested under Sun Java interpreter and Matlab. MTGIpick can be used in Windows-, Linux- and Mac-based platforms. Java Virtual Machine and MATLAB Compiler Runtime (MCR) are required for MTGIpick setup on your platform. However, we strongly advise the use of openjdk (JDK) instead of the Oracle version of java virtual machine when working in linux-based or Mac-based machines as the Oracle version may result in some exceptions during the analyses. </br>
  Software_ _ _ _ _ _ _ _ _ _ _ _ On window_ _ _ _ _ _ _ _ On Linux(x86_64)_ _ _ _ _ _ _ _ _  On Mac</br>
  Java Virtual Machine_ _ _ _ _ _ _ _ _ _jdk 1.7_ _ _ _ _ _ _ _ _ _ _jdk 1.7_ _ _ _ _ _ _ _ _ _ _ _ _ _ _jdk 1.7_</br>
  MATLAB Compiler Runtime_ _ _ _	_ _mcr 8.4_ _ _ _ _ _ _ _ _ _mcr 8.4_ _ _ _ _ _ _ _ _ _ _ _ _ _ _mcr 8.4_</br>

#####2.2. Download
>There are two ways to download the MTGIpick:</br>

>1) You can download the MTGIpick package with JDK 1.7 and MCR 8.4 from our web (http://bioinfo.zstu.edu.cn/MTGI)</br>
>>A) Windows (MTGIpick.zip)
>>>- MCRInstaller.exe　　　　　　 　# MCR 8.4 for Windows
>>>- MTGI_setup.exe　 　 　　　　　# main program
>>>- Example.fasta　 　 　　　　   　# A sequence in FASTA format
>>>- README.txt　　　　  　　　   　# Documentation

>>B) Linux (MTGIpick.zip)
>>>- jdk-7u79-linux-x64.tar.gz　　　　# JDK 1.7 for Linux
>>>- MCRInstaller.zip　　　　　　　　# MCR 8.4 for Linux
>>>- MTGI_linux.jar　　　　　　　　　# Main program
>>>- install_jdk-mcr_linux.sh　　　　　# Install jdk 1.7 and mcr 8.4
>>>- run_MTGI_linux.sh　　　　　　 　# Run MTGIpick software
>>>- Example.fasta　　　　　　　　　 # A sequence in FASTA format
>>>- README.txt　　　　　　　　　　# Documentation.

>>C) Mac (MTGIpick.zip)
>>>- jdk-7u25.dmg　　　　　　　　　　# JDK 1.7 for Mac
>>>- MCRInstaller.zip　　　　　　　　　# MCR 8.4 for Mac
>>>- MTGI_mac.jar　　　　　　　　　　# Main program
>>>- install_mcr_mac.sh　　　　　　　　# Install mcr 8.4
>>>- run_MTGI_mac.sh　　　　　　　　# Run MTGIpick software
>>>- Example.fasta　　　　　　　　　　# A sequence in FASTA format
>>>- README.txt　　　　　　　　　　　# Documentation.

>2)If you download the MTGIpick package without JDK 1.7 or MCR 8.4 from our web (http://bioinfo.zstu.edu.cn/MTGI), download the JDK 1.7 and MCR 8.4 for your platform from the following Web:
>>JDK: http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html#jdk-7u25-oth-JPR</br>
>>MCR: http://www.mathworks.com/products/compiler/mcr/?refresh=true

>**Make sure that the JDK 1.7 and MCR 8.4 are saved into the folder of the MTGIpick.**

#####2.3. Install and Run

1) Windows (Tested on win7)</br>

　　Before installing MTGIpick, make sure that the MCR 8.4 for windows is saved into the same folder of MTGIpick software. Install MCR 8.4 first, and run MTGIpick setup directly.</br>

2) Linux (Tested on CentOS-7.0-1406-x86_64)</br>

　　Before installing MTGIpick, make sure that the JDK 1.7 (jdk-7u79-linux-x64.tar.gz) and MCR 8.4 for Linux are saved into the same folder of MTGIpick software. Please follow the following steps for installing and running MTGIpick:</br>
　　Step 1</br>
　　To install jdk 1.7 and mcr 8.4, it requires a simple command line as follow:</br>
　　>bash install_jdk-mcr_linux.sh</br>
　　Step 2</br>
　　To run the MTGIpick software, just type a simple command line as follow (Once the first step has run, execute the second step to run MTGIpick):</br>
　　>bash run_MTGI_linux.sh</br>
　　
3) Mac (Tested on OS X 10.10 Yosemite)</br>
　　Before installing MTGIpick, make sure that the JDK 1.7 (jdk-7u25.dmg) and MCR 8.4 for Mac are saved into the same folder of MTGIpick software. Please follow the following steps for running MTGIpick:</br>
　　Step 1</br>
　　Install jdk (jdk-7u25.dmg) by simply clicking</br>
　　Step 2</br>
　　To install mcr 8.4, it requires a simple command line as follow:</br>
　　> bash install_mcr_mac.sh</br>
　　Step 3</br>
　　To run MTGIpick software, just type a simple command line as follow (Once the first two steps have run, execute the third step to run MTGIpick):</br>
　　> bash run_MTGI_mac.sh</br>
　　
###3. Tutorial
#####3.1. Functions and features
　　1. IST-LFS: an iteration of small-scale t-test with large-scale feature selection to quantifying the compositional difference between a region and the ‘native’genome regions.</br>
　　2. ILST-DSFS：an iteration of large-scale statistical testing using dynamic signals from small-scale feature selection to identify some multi-window segments.</br>
　　3. CG-MJSD: A boundary detection method based on CG-based segmentation and Markovian Jensen–Shannon divergence.</br>
　　4. The methods and parameters could be chosen according to your purpose.</br>
#####3.2. Input
　　Input file to MTGIpick should be DNA sequences, and it have to be in FASTA format. For example, the file name is sequence1.fasta, its content looks like this:</br>
　>cya_GI1_93960_99000_GI2_208020_223020_GI3_408480_410520</br>
CCCCATTCCCCCCATTCCCTCCTTTTCCACCATACCCTCTTTTCCCCTCGTTGCCCCCAA</br>
ATTTTTACGCATTTCCCCATTAATGCGATGATCCCAGCGCGAAAGCATCTGTGATTAAGA</br>
CGTCTATCAATTTATACTCGTTAGGGTTTTTTCTTCGGTGGTACCATCTGGGCGCCTACG</br>
CATCTGTCATATCTTCCTCTCGCCTACCAGAGCCATTAGGGAAATAGCTTCAGAGCTATG</br>
CTTGTTTTGGTTTTGACAGAACCTTTCCGATGTCGAGATCGCCGAAATTGCCGGATTGAT</br>
ATTGGTTTCGGGAAATCATCCGTCCCGCTGAACTGTTTCTTTATCTTCCGTCGCATTTAC</br>
TTAATCCCGGCTGTATTGATCATATCTGACTTTCTATCTTGCGCCGTGTACCTGCCGTTA</br>
GCACCCCCCGTAGCCTCTCTATCCCCGTTTCCGGTATACTCTTGCAGCAGAGCAGCTCTG</br>
GCATACCACTAAGCGCGTATGTAGAGGCTTCGTTCATGCAACATTTGATCGGGGAGATTT</br>
ATTTTCTTGGGAGACTCCAAGCCGTTCTTGCAGACCTTTTGCCTGCGGTAGCGTGAAGCG</br>
　>……</br>
Note:</br>
　　The input file should be DNA sequences with no tabs, spaces, and wraps in the sequence. </br>

#####3.3. Methods
######3.3.1 IST-LFS method
1) Framework</br>
　　IST-LFS is a proposed small-scale t-test with large-scale feature selection that was used to quantify the compositional differences of a region from the host in the MTGIpick. It is efficient at detecting horizontal gene transfers or genomic islands with small sizes. The steps are described below:</br>
　　a) Split a genome into n non-overlapping windows of size 1kb.</br>
　　b) Calculate the frequencies of the tetranucleotides in each window as genomic signatures.</br>
　　c) Extract the signatures of the host with the help of the confidence intervals on the windows’ variances.</br>
　　d) Calculate the kurtosis of each tetranucleotide across n windows and select the windows with a larger kurtosis as informative signatures.</br>
　　e) Measure the divergence of the ith window from the host using the two-sample t-test.</br>
　　f) Select windows whose scores are large enough to be considered to be statistically significant. </br>
　　g) Delete the selected windows and update all of windows of the genome; then, repeat steps d-f until there is no window to be found.</br>
　　h) Refine the boundaries of the predicted genomic islands using the CG-MJSD method.</br>
***2) Parameters of IST-LFS Software***</br>
　　**Word size**: the length of k-mer.</br>
　　**Windowed transform**: the total number of the windows used in genomic transformation.</br>
　　**Iteration time**: the periods of time that are repeated to select windows whose scores are large enough to be considered statistically significant.</br>
　　**Core feature size**: the size of selected features by the proposed kurtosis.</br>
　　**Eye window size**: the size of eye windows used in the proposed divergence measure based on two-sample t-test.</br>
　　**Time standard error**: the standard deviation of the mean of the window scores to select windows associated with putative GIs.</br>
　　**Upstream/downstream of ‘raw’ genomic islands**: the length of sequences around ‘raw’ genomic islands to refine the boundaries of predicted genomic islands.</br>

######3.3.2 MTGIpick method
***1) Framework***</br>
　　MTGIpick is a novel method for the robust identification of GIs using the multiscale statistical testing. The steps are described below:</br>
　　a) Split a genome into n non-overlapping windows of size 1kb.</br>
　　b) Calculate the frequencies of the tetranucleotides in each window as genomic signatures.</br>
　　c) At a smaller scale, we propose an iteration of small-scale t-tests with large-scale feature selection (IST-LFS) to quantify the compositional differences of a region from the host. </br>
　　d) At a large scale, we investigate the variability of higher moments of each tetranucleotide and design an iteration of large-scale statistical testing using dynamic signals from small-scale feature selection (ILST-DSFS), to identify large, multi-window segments. </br>
　　e) For each multi-window region detected by the ILST-DSFS, we split it into several distinct segments according the GC-content bias, from which we detect genomic islands with respect to their IST-LFS scores. </br>
f) Refine the boundaries of the predicted genomic islands using the CG-MJSD method.</br>
***2) Parameters of MTGIpick Software***</br>
　　**Word size**: the length of k-mer.</br>
　　**Windowed transform**: the total number of the windows used in genomic transformation.</br>
　　**Iteration time**: the periods of time that are repeated to select windows whose scores are large enough to be considered statistically significant.</br>
　　**Core feature size**: the size of selected features by the proposed kurtosis.</br>
　　**Eye window size**: the size of eye windows used in the proposed divergence measure based on two-sample t-test.</br>
　　**Time standard error**: the standard deviation of the mean of the window scores to select windows associated with putative GIs.</br>
　　**Neighbourhood size**: the total number of the windows surrounding the ith window used in the calculation of the higher moments.</br>
　　**Long window size**: chooses the number of the subsequent continued windows of the ith window.</br>
　　**Dynamic feature size**: the size of selected features by the proposed kurtosis within the ith long sliding window.</br>
　　**Upstream/downstream of ‘raw’ genomic islands**: the length of sequences around ‘raw’ genomic islands to refine the boundaries of predicted genomic islands. </br>
#####3.4. Outputs

　　The output of MTGIpick consists of genomic signatures, score of each region and predicted genomic islands. They are stored in the same directory where the input file is stored. The genomic signatures are displayed like this:</br>
![1](https://github.com/wanggnoc/MTGIpick/raw/master/pic/1.png) </br>

　　The score of each region is displayed like this:</br>
![2](https://github.com/wanggnoc/MTGIpick/raw/master/pic/2.png) </br>

　　And the predicted genomic islands are:<br>
![3](https://github.com/wanggnoc/MTGIpick/raw/master/pic/3.png) </br>

###4. References
1.	Dhillon BK, Chiu TA, Laird MR, Langille MG, Brinkman FS: IslandViewer update: Improved genomic island discovery and visualization. Nucleic Acids Res 2013, 41: W129-132.</br>
2.	Aaron JA, Rajeev K, Azad AR, Jeffrey GL: Detection of genomic islands via segmental genome heterogeneity. Nucleic Acids Res 2009, 37:5255-5266.</br>
3.	Jaron KS, Moravec JC, Martinkova N: SigHunt: horizontal gene transfer finder optimized for eukaryotic genomes. Bioinformatics 2014, 30:1081-1086.</br>
4.	Langille MG, Hsiao WW, Brinkman FS: Detecting genomic islands using bioinformatics approaches. Nature Rev Microbiol 2010, 8:373-382.</br>
