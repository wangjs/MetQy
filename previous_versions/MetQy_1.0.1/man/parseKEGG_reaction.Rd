% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parseKEGG_reaction.R
\name{parseKEGG_reaction}
\alias{parseKEGG_reaction}
\title{Parse KEGG reaction database}
\usage{
parseKEGG_reaction(KEGG_path, outDir = "output", verbose = T, ...)
}
\arguments{
\item{KEGG_path}{- string pointing to the location of the KEGG database parent folder}

\item{outDir}{- string pointing to the output folder. Default ("output/"). \code{NULL} overwrites existing files.}

\item{verbose}{- logical. Should progress be printed to the screen? Default (\code{TRUE})}

\item{...}{- other arguments for \code{parseKEGG_file()}.}
}
\value{
Generates reaction_reference_table (.txt & .rda; saved to \code{'outDir'}) and returns
a data frame with as many rows as entries and the following columns (or variables):
\preformatted{
	 (1) ID         - R number identifier (e.g. "R00001");
	 (2) NAME       - reaction or enzyme name;
	 (3) DEFINITION - reaction definition using compound's names;
	 (4) EQUATION   - reaction definition using compound's IDs;
	 (5) ENZYME     - Enzyme Commission (EC) number (e.g. "1.1.1.1");
	 (6) COMMENT;  (7) RCLASS;
}
In all instances, multiple entries in a given column are separated by '[;]'.
}
\description{
Read and format the KEGG reaction database text file into a reference table.
}
\details{
The columns are automatically generated by the \code{parseKEGG_file} function into variables, 
which are further formatted specifically for the KEGG reaction database.

The text file used is "\code{KEGG_path}/ligand/reaction/reaction". 

It decompresses "\code{KEGG_path}/ligand/reaction.tar.gz" if needed.
}
\seealso{
\link{parseKEGG_file}
}

