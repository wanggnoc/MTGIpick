
MTGIpick - A software developed intending to identify Genomic Islands
----------------------------------------------------------------------
1. What is MTGIpick?

MTGIpick implements a multiscale statistical algorithm to predict genomic islands from a single genome. It uses a small-scale test with large-scale features to score small region deviating from the host and a large-scale statistical test with small-scale features to identify multi-window segments for identification of genomic islands. MTGIpick can identify genomic islands from a single genome, without annotated information of genomes or prior knowledge from other datasets. 

2. Requirements

MTGIpick has been compiled and tested under Sun Java interpretera and Matlab. MTGIpick can be used in Windows-, Linux- and Mac-based platforms. Java Virtual Machine and MATLAB Compiler Runtime (MCR) are required for MTGIpick setup on your platform. However, we strongly advise the use of openjdk (JDK) instead of the Oracle version of java virtual machine when working in linux-based or Mac-based machines as the Oracle version may result in some exceptions during the analyses.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ Software _ _ _ _ _ _ _ _    On window_ _ _ _ _ _ _ _ On Linux(x86_64)_ _ _ _ _ _ __ _ _  On Mac_ _ __ 
  Java Virtual Machine	          jdk 1.7	           jdk 1.7                           jdk 1.7
  MATLAB Compiler Runtime	  mcr 8.4	           mcr 8.4             	             mcr 8.4
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
 All software can be downloaded from our websites (http://bioinfo.zstu.edu.cn/MTGI). MTGIpick file contains its corresponding JDK and MCR on different platforms.

3. Download

There are two ways to download the MTGIpick:
   1) You can download the MTGIpick package with JDK 1.7 and MCR 8.4 from our web (http://bioinfo.zstu.edu.cn/MTGI)
   A) Windows (MTGIpick.zip)
       - MCRInstaller.exe                           # MCR 8.4 for Windows
       - MTGI_setup.exe                             # main program
       - Example.fasta                              # A sequence in FASTA format
       - README.txt                                 # Documentation.
   B) Linux (MTGIpick.zip)
       - jdk-7u79-linux-x64.tar.gz                  # JDK 1.7 for Linux
       - MCRInstaller.zip                           # MCR 8.4 for Linux
       - MTGI_linux.jar                             # Main program
       - install_jdk-mcr_linux.sh                   # Install jdk 1.7 and mcr 8.4
       - run_MTGI_linux.sh                          # Run MTGIpick software
       - Example.fasta                              # A sequence in FASTA format
       - README.txt                                 # Documentation.
   C) Mac (MTGIpick.zip)
       - jdk-7u25.dmg                               # JDK 1.7 for Mac
       - MCRInstaller.zip                           # MCR 8.4 for Mac
       - MTGI_mac.jar                               # Main program
       - install_mcr_mac.sh                         # Install mcr 8.4
       - run_MTGI_mac.sh                            # Run MTGIpick software
       - Example.fasta                              # A sequence in FASTA format
       - README.txt                                 # Documentation.
   2) If you download the MTGIpick package without JDK 1.7 and MCR 8.4 from our web (http://bioinfo.zstu.edu.cn/MTGI), download the JDK 1.7 and MCR 8.4 for your platform from the following Web:
   JDK: http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html#jdk-7u25-oth-JPR
   MCR: http://www.mathworks.com/products/compiler/mcr/?refresh=true
   Make sure that the JDK 1.7 and MCR 8.4 are saved into the folder of the MTGIpick.

4. Install and Run
  
   1) Windows (Tested on win7)
   Before installing MTGIpick, make sure that the MCR 8.4 for windows is saved into the folder of MTGIpick software. Install MCR 8.4 first, and run MTGIpick setup directly.
   2) Linux (Tested on Centos7)
   Before installing MTGIpick, make sure that the JDK 1.7 (jdk-7u79-linux-x64.tar.gz) and MCR 8.4 for Linux are saved into the folder of MTGIpick software. Please follow the following steps for installing and running MTGIpick:
   Step 1
   To install jdk 1.7 and mcr 8.4, it requires a simple command line as follow:
      > bash install_jdk-mcr_linux.sh
   Step 2
   To run the MTGIpick software, just type a simple command line as follow:
      >bash run_MTGI_linux.sh
   3) Mac (Tested on OS X 10.10 Yosemite)
   Before installing MTGIpick, make sure that the JDK 1.7 (jdk-7u25.dmg) and MCR 8.4 for Mac are saved into the folder of MTGIpick software. Please follow the following steps for running MTGIpick:
   Step 1
   Install jdk (jdk-7u25.dmg) by simply clicking
   Step 2
   To install mcr 8.4, it requires a simple command line as follow:
      > bash install_mcr_mac.sh
   Step 3
   To run MTGIpick software, just type a simple command line as follow:
      > bash run_MTGI_mac.sh
 
5. Inputs

Input file to MTGIpick should be DNA sequences, and it have to be in FASTA format. For example, the file name is sequence1.fasta, its content looks like this:
  >cya_GI1_93960_99000_GI2_208020_223020_GI3_408480_410520
  CCCCATTCCCCCCATTCCCTCCTTTTCCACCATACCCTCTTTTCCCCTCGTTGCCCCCAA
  ATTTTTACGCATTTCCCCATTAATGCGATGATCCCAGCGCGAAAGCATCTGTGATTAAGA
  CGTCTATCAATTTATACTCGTTAGGGTTTTTTCTTCGGTGGTACCATCTGGGCGCCTACG
  CATCTGTCATATCTTCCTCTCGCCTACCAGAGCCATTAGGGAAATAGCTTCAGAGCTATG
  CTTGTTTTGGTTTTGACAGAACCTTTCCGATGTCGAGATCGCCGAAATTGCCGGATTGAT
  ATTGGTTTCGGGAAATCATCCGTCCCGCTGAACTGTTTCTTTATCTTCCGTCGCATTTAC
  TTAATCCCGGCTGTATTGATCATATCTGACTTTCTATCTTGCGCCGTGTACCTGCCGTTA
  GCACCCCCCGTAGCCTCTCTATCCCCGTTTCCGGTATACTCTTGCAGCAGAGCAGCTCTG
  GCATACCACTAAGCGCGTATGTAGAGGCTTCGTTCATGCAACATTTGATCGGGGAGATTT
  ATTTTCTTGGGAGACTCCAAGCCGTTCTTGCAGACCTTTTGCCTGCGGTAGCGTGAAGCG
  >бнбн
Note:
The input file should be DNA sequences with no tabs, spaces, and wraps in the sequence. 

6. Outputs

The output of MTGIpick consists of genomic signatures, score of each region and predicted genomic islands. They are stored in the same directory where the input file is stored. 
  1) *_signa.txt
  2) *_score.txt
  3) *_predict.txt

   


If you have any problem, please contact:
     
     daiailiu04@yahoo.com

