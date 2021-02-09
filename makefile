init:
	echo "init"

publish:
	pip install 'twine>=1.5.0'
	python setup.py sdist bdist_wheel
	twine upload --skip-existing dist/*
	rm -fr build .egg pycloudxns.egg-info
