# Reliability Simulation

This is a reliability/availability simulation project created by **Alexander Charland** and **Mohammed Mutawkilu** for our **CSC456 Reliable Systems** class.

This repository is an archive of our completed project, which includes the platform we did it on (MATLAB); with our source code, results, diagrams/command windows, and extensive documentation.

## Documentation

The complete project documentation is hosted on GitHub Pages.

**[View Project Documentation](https://ac40683299.github.io/reliability-simulation/)**

## Table of Contents

### Introduction
- [Introduction](https://ac40683299.github.io/reliability-simulation/)

### Single Server
- [Single Server Simulation](https://ac40683299.github.io/reliability-simulation/single-server-simulation)
- [Single Server Results](https://ac40683299.github.io/reliability-simulation/single-server-results)

### Active-Passive Pair
- [Active-Passive Pair](https://ac40683299.github.io/reliability-simulation/active-passive-pair)

### Three-Server Cluster
- [Three-Server Cluster](https://ac40683299.github.io/reliability-simulation/three-server-cluster)

### Required Experiments
- [Failure Rate Sweep](https://ac40683299.github.io/reliability-simulation/required-experiments/failure-rate-sweep)
- [Repair Time Sweep](https://ac40683299.github.io/reliability-simulation/required-experiments/repair-time-sweep)
- [Marginal Value of the Third Server](https://ac40683299.github.io/reliability-simulation/required-experiments/third-server)

### RAID Simulation
- [RAID Simulation](https://ac40683299.github.io/reliability-simulation/raid-simulation)

## Project Overview

For this project, the main focus was simulating the reliability/availability of different system configs via MATLAB, which included hardware failures and how redundancy can affect a system's ability to remain operational over a period of time.

## Prerequisites

To run the simulations in this project, you will need access to MATLAB.
- [MATLAB Online](https://matlab.mathworks.com/)
- [GNU Octave](https://octave.org/)

The simulations were developed using MATLAB Online, but they could run using GNU Octave, which is a free, open-source alternative to MATLAB.

**Note:** There may be some adjustments as we did not test it on there.

## Running the Simulations

Clone the repository:

```bash
git clone https://github.com/ac40683299/reliability-simulation.git
```

Navigate to the scripts directory:

```bash
cd reliability-simulation/scripts
```

Open MATLAB and add the `scripts` directory to your MATLAB path (or you can set it as your current working directory).

| MATLAB Script | Description |
|---|---|
| `main_single.m` | Single Server Simulation |
| `main_pair.m` | Active-Passive Pair Simulation |
| `main_cluster.m` | Three-Server Cluster Simulation |
| `main_raid.m` | RAID Simulation |
| `sweep_fail.m` | Failure Rate Sweep |
| `sweep_repair.m` | Repair Time Sweep |

For example, if you wanted to execute the Single Server simulation, you would run:

```matlab
main_single
```

This is where each script uses its corresponding simulation function to execute the experiment and generate results.

## Repository Structure

```text
├── docs
│   ├── active-passive-pair.md
│   ├── introduction.md
│   ├── raid-simulation.md
│   ├── required-experiments
│   │   ├── failure-rate-sweep.md
│   │   ├── repair-time-sweep.md
│   │   └── third-server.md
│   ├── single-server-results.md
│   ├── single-server-simulation.md
│   └── three-server-cluster.md
├── docusaurus.config.js
├── package.json
├── package-lock.json
├── scripts
│   ├── main_cluster.m
│   ├── main_pair.m
│   ├── main_raid.m
│   ├── main_single.m
│   ├── simulate_cluster.m
│   ├── simulate_pair.m
│   ├── simulate_raid.m
│   ├── simulate_single.m
│   ├── sweep_fail.m
│   └── sweep_repair.m
├── sidebars.js
├── src
│   └── css
│       ├── cosmos.css
│       └── fonts
│           ├── ibm-plex-mono-400-latin-ext.woff2
│           ├── ibm-plex-mono-400-latin.woff2
│           ├── ibm-plex-mono-500-latin-ext.woff2
│           ├── ibm-plex-mono-500-latin.woff2
│           ├── OFL.txt
│           ├── outfit-variable-latin-ext.woff2
│           └── outfit-variable-latin.woff2
└── static
    └── img
        ├── command-windows
        │   ├── active-passive-pair.png
        │   ├── raid-simulation.png
        │   ├── single-server.png
        │   └── three-server-cluster.png
        └── diagrams
            ├── figure-1.png
            ├── figure-2.png
            ├── figure-3.jpg
            ├── figure-4.jpg
            ├── figure-5.png
            ├── figure-6.png
            └── figure-7.png
```
