cd $(dirname "${BASH_SOURCE[0]}../")

if [[ `echo $TRAVIS_BRANCH` = "master" ]]; then
	# Run basic and SauceLabs tests
	echo "Running complete test suite..."
	npm test || exit 1
	npm run test-ci || exit 1
else
	# Run basic tests
	echo "Running basic tests..."
	npm test || exit 1
fi
