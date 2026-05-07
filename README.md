# testing-final-year-project
Code used for testing such as my load testing files



Ensure gh (GitHub) is working for your terminal

sudo commands won't work on BB lab machines so use this curl command to install gh

mkdir -p ~/.local/bin
curl -L https://github.com/cli/cli/releases/download/v2.49.0/gh_2.49.0_linux_amd64.tar.gz | tar xz -C /tmp
cp /tmp/gh_2.49.0_linux_amd64/bin/gh ~/.local/bin/gh
export PATH="$HOME/.local/bin:$PATH"


I used /scratch directory to have more space cloning all repos


Use setup.sh to clone the 50 testing assignment repos to your otter lab machine

## How the test works
Load testing will be run in waves. Each wave is a a different amount of repos.
Each wave is on different files
test_wave1 - 1 repo
test_wave5 - 5 repos
test_wave10 - 10 repos
test_wave20 - 20 repos
test_wave30 - 30 repos
test_wave40 - 40 repos
test_wave50 - 50 repos

This Load Test REQUIRES 2 seperate lab machines.

### On lab machine 1:
- (On terminal 1) Run server (server.py and ngrok in final-year-project repo. Instructions also in repo)
- (On terminal 2) IMPORTANT DO THIS BEFORE RUNNING WAVE TESTS - Track GPU logs and usage using the command below:
```
nvidia-smi --query-gpu=timestamp,memory.used,memory.free,utilization.gpu,power.draw --format=csv -l 1 | tee gpu_log_wave{waveNumber}.csv
```

GPU logs are stored in gpu_log_wave{waveNumber} (Replace the waveNumber with the appropriate wave test)
Seperate gpu logs are for easy organisation and seperation for each wave test.

### On lab machine 2:
- clone all 50 test repositories using the file `setup.sh`
Run
```
chmod +x setup.sh
./setup.sh
```

- run wave tests
e.g.
```
chmod +x test_wave{waveNumber}.sh
./test_wave{waveNumber}
```
Change wave number accordingly



