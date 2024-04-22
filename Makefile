install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	python -m textblob.download_corpora

test:
	python -m pytest -vv --cov=nlplogic test_*.py


format:
	black *.py nlplogic

lint:
	pylint --disable=R,C,E1120 *.py nlplogic/*.py
## both are disabled i only want to see errors and standard warnings
## R is recommedation warnings
## C is configuration warnings

all: install lint test