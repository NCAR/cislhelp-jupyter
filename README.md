# cislhelp-jupyter
Interactive HPC documentation for users of CISL resources

## Contents:
Introduction to Cheyenne Bash Notebook. <br>
TensorFlow: Introduction to Linear Regression Notebook and Related Files.<br>
Memory Usage Tools Notebook and Related Files.

### Introduction to Cheyenne Bash Notebook
A Jupyter notebook constructed to provide a tutorial as to how to utilize the Cheyenne HPC system. It includes examples of how to construct scripts to run on Cheyenne. The notebook also includes general information in regard to Cheyenne and the Casper data analysis and visualization cluster.

### TensorFlow: Introduction to Linear Regression Notebook and Related Files
Jupyter notebook demonstrating the use of Python's TensorFlow library.

### Memory Usage Tools Notebook and Related Files
Jupyter notebook that demonstrates how to utilize the Memory Usage Tools that are available on the Cheyenne HPC and the Casper data analysis and visualization cluster.

### Other Files
casper_fortran_script_for_execution.sh: A bash script that submits a job to Casper using the contstructMultiDimensionalItem.f90 Fortran code. Initial command line arguments are 80, 80, 80, and 100. will only work if the Memory Usage Tools notebook is initialized on Casper. The parameters of this script can be edited. <br>

cheyenne_fortran_script_for_execution.sh: A bash script that submits a job to Cheyenne using the contstructMultiDimensionalItem.f90 Fortran code. Initial command line arguments are 80, 80, 80, and 100. will only work if the Memory Usage Tools Notebook is initialized on Cheyenne. The parameters of this script can be edited.

constructMultiDimensionalItem.f90: Fortran code that has been made for usage by the Memory Usage Tools Notebook. The Fortran code builds two 3-Dimensional array constructs using the first three integer inputs from the command line and uses the fourth integer input of the command line to determine the number of iterations to be ran.

rdu_weather_history.csv: A CSV of data collected from weather at the Raleigh Durham International Airport dataset. Was originally downloaded from: https://catalog.data.gov/dataset/local-weather-archive. Is used the TensorFlow: Introduction to Linear Regression Notebook.
