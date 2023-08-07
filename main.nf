#!/usr/bin/env nextflow

project_dir = projectDir
params.outdir = "results"

process get_input_file {

  output: 
  path 'input.txt' 

  // scripts must be in the 'bin' folder
  """
  create_input_file.sh input.txt
  """
}

process create_result_file {

  publishDir params.outdir, mode: 'copy'

  input: 
    path y

  output: 
    path 'result.txt' 

  // scripts must be in the 'bin' folder
  """
  create_result_file.sh $y
  """
}

workflow {
  input_file_channel = get_input_file()
  create_result_file(input_file_channel)
}
