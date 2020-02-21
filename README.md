# estuary

A Go Library for completing various file, log file, zip file, tar file, and related management tasks.

## Lagniappe

In addition to the main description of what this library provides, in the statement above, there are a number of specific things this library provides functionality around.

* Unzip Collateral to Path - This functionality takes the contents of a zipped file and will pull out all of the files, disregarding any folders and place the files in the designated path the content is being unzipped to. Ex command `estuary unzip --onlyfiles zipFileToUn.zip path/to/unzipTo`.
*
* 