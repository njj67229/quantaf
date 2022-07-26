library("alevinQC")
sessionInfo()
packageVersion("alevinQC")
help.search("alevinQC.alevinFryQCReport")
output <- "${params.output_dir}/alevin_qc/"
input <- "${params.output_dir}/alevin_fry/$results_path"
alevinFryRQCReport(baseDir = input,
	sampleId = "testSample", 
	outputFile = "alevinReport.html", 
	outputFormat = "html_document",
	outputDir = output, forceOverwrite = TRUE)