************ Secondary Boot Loader (SBL) *****************
Ford SBL is called as DemoUpdater or Updater in Vector FBL SIP Package
TechM has received DemoUpdater configured and Built It.
Updater has been placed in fss_sbl in our project
Please find here steps to generate Updater
** fss_pbl_filled.hex Generation **
1. Compile and link the new FBL. 
2. Convert new FBL into hex-file. 
3. Adapt new FBL hex-file, e.g.: 
a. Remove memory areas, which do not belong to the actual FBL memory area (e.g. ApplVect) 
b. Align data to the flash segment size 
c. copy fss_pbl.hex file into \25_Software_2\Release\src\01_LLD\other_files\tools\BootLoader\PBL
d. drag and drop fss_pbl.hex onto PblFill.bat and see fss_pbl_filled.hex generated
** FBL/PBL C-Array Generation **
4. Convert adapted hex-file into a C-Array (FblUpd_Prepare.bat). 
a.
5. Add the C-Array to the Updater. 
6. Compile and link the Updater. 7. (optionally) Generate OEM specific download container.

In SIP, refer these two documents for detailed explanation 
TechnicalReference_FBL_Updater.pdf
TechnicalReference_Fbl_Updater_TC3xx.pdf
