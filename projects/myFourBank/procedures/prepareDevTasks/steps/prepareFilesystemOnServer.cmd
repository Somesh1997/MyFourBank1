#
# Clean and recreate directory to receive IQ jars to analyze
echo "2- Reset IQ Analyzer Repository directory"
rm -rf $[iqAnalysisRepo]
mkdir -p $[iqAnalysisRepo]
cd $[iqAnalysisRepo]
pwd
ls -al 
#
