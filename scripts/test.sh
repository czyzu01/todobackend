#!/bin/bash
# Activate virtual environment
. /appenv/bin/activate

# Download requirements to build cache
pip download -d /build -r requirements_test.txt --no-input

# Install application test requirements
echo "=======install test requirements"
echo "======== content of /build"
ls -ltr /build

echo "======== content of requirements_test.txt"
cat requirements_test.txt

echo "======== content of setup.py"
cat setup.py

pip install --no-index -f /build -r requirements_test.txt

# Run test.sh arguments
exec $@
