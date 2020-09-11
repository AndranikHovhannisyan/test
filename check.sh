set -e
echo -n "Checking if there are uncommited changes... "
trap 'echo -e "\033[0;31mFAILED\033[0m"' ERR
git diff-index --quiet HEAD --
trap - ERR
echo -e "\033[0;32mAll set!\033[0m"
