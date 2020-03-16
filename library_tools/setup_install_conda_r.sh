#\env\bash
echo -e "## Default repo\nlocal({r <- getOption(\"repos\")\n       r[\"CRAN\"] <- \"http://cran.r-project.org\"\n       options(repos=r)\n})\nSys.setenv(TZ=\"GMT\") " > $HOME/.Rprofile
conda install -y r-base r-caret
pip install rpy2
#
