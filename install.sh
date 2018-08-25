#!/bin/bash
(rm -rf dist/)
(python increment_version_number.py)
(python setup.py sdist)
(twine upload dist/*) # joepatmckenna/M@ybe1day
(git add -A . && cat version | xargs git commit -m  && git push -f origin master) # joepatmckenna/maybe1day
