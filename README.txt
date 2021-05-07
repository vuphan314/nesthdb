REQUIREMENTS

* htd: https://github.com/TU-Wien-DBAI/htd/ (Use branch normalize_cli)
* PostgreSQL: https://www.postgresql.org
* Python 3
* Python 3 packages:
	* psycopg2
	* future-fstrings
	* clingo
* SAT-/#SAT/PMC solver of your choice
	* In our experiments we used picoSAT, sharpSAT and projMC
* Preprocessor pmc

CONFIGURATION

We provided the configurations we used during our experiments as config.json (Projected Model Counting) and config_sharpsat.json (Model Counting).
You can specify which config to use with --config=<CONFIG>

USAGE

python3 nesthdb.py -f <INPUT-FILE> <OPTIONS>

A list of options is available using --help
For #SAT instead of projected model counting use flag --sharpsat
