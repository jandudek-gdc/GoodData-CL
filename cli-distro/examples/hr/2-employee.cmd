# This example demonstrates how to load more complex structures to GoodData
# Three datasets: department, employee, and salary are loaded are connected together
# Check the configuration files that contains the connection points and references

# Retrieve the project ID saved by the first script
RetrieveProject(fileName="examples/hr/pid");

# Load the employee data file, using the XML file describing the data
LoadCsv(csvDataFile="examples/hr/employee.csv",header="true",configFile="examples/hr/employee.xml");

# Generate the MAQL script describing data model for employee data
GenerateMaql(maqlFile="examples/hr/employee.maql");

# Execute the employee MAQL script on the server
ExecuteMaql(maqlFile="examples/hr/employee.maql");

# Transfer the employee data
TransferLastSnapshot(incremental="false");