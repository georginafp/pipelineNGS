% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alignmentBowtie2.R
\name{alignmentBowtie2}
\alias{alignmentBowtie2}
\title{Alignment with Bowtie 2}
\usage{
alignmentBowtie2(
  file,
  out_name = NULL,
  type = "SE",
  cores = 6,
  index = "/vault/refs/indexes/hg38",
  path_bam = "bam/",
  path_logs = "logs/",
  extra_bowtie2 = "",
  run = TRUE
)
}
\arguments{
\item{file}{Character string (single-end) or character vector of
length 2 (paired-end) with the file names of the samples to be analysed.}

\item{out_name}{Character vector, with the same length as \code{fastq_files},
indicating the output filenames.}

\item{type}{Sequence type, one of "SE" (single end) or "PE" (paired end).}

\item{cores}{Number of threads to use for the analysis.}

\item{index}{Character indicating the location and basename for the
\href{http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml#the-bowtie2-build-indexer}{Bowtie2 index}.}

\item{path_bam}{Character indicating the output directory for the bam files.}

\item{path_logs}{Character indicating the output directory for the logs.}

\item{extra_bowtie2}{Character containing additional arguments to be passed to
bowtie2 alignment call.}

\item{run}{Logical indicating whether to run the alignment (for testing purposes). Default: TRUE}
}
\value{
Writes \code{out_name.raw.bam} in \code{path_bam}. Also generates a log for the alignment (\code{sample.alignment.log}) in your \code{path_logs}.
}
\description{
Aligns FastQ files to a reference genome using \href{http://bowtie-bio.sourceforge.net/bowtie2/index.shtml}{Bowtie2},
converts the output to BAM, sorts it according to genomic position and
indexes the final BAM file.
}
\examples{
\dontrun{
alignmentBowtie2(file=paste0(path, "fastq/NL1_h3k27ac_sample.fastq.gz"),
                 suffix_fastq=".fastq.gz",
                 type="SE",
                 index="/vault/refs/indexes/hg38",
                 path_bam=paste0(path, "bam/"),
                 path_logs=paste0(path, "logs/"),
                 cores=6,
                 run=FALSE)
}
}
