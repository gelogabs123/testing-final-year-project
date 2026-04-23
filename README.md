# testing-final-year-project
Code used for testing such as my load testing files



Ensure gh (GitHub) is working for your terminal

sudo commands won't work on BB lab machines so use this curl command to install gh

mkdir -p ~/.local/bin
curl -L https://github.com/cli/cli/releases/download/v2.49.0/gh_2.49.0_linux_amd64.tar.gz | tar xz -C /tmp
cp /tmp/gh_2.49.0_linux_amd64/bin/gh ~/.local/bin/gh
export PATH="$HOME/.local/bin:$PATH"


I used /scratch directory to have more space cloning all repos
