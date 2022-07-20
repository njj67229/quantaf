process generate_qc {
	tag "generate_qc:${af_results}"
	input:
		tuple path(af_results), val(results_path)

	script:
		"""
		Rscript $projectDir/afQC.R
		"""
}

workflow af_qc {
	take:
		af_results_path
	main:
		generate_qc(af_results_path)	
}

