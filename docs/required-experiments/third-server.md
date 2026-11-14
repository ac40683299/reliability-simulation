---
title: Marginal Value of the Third Server
---

# Marginal Value of the Third Server

We compared the availability gain of 3 servers over 2 to evaluate the Marginal Value of adding the Third Server. The Third Server gain is the difference in availability between the two configs, where a larger gain means that adding the Third Server would provide a great improvement in system availability.

**Marginal Value of the Third Server Table:**

| Setting: | 2 Servers: | 3 Servers: | Third-Server Gain: |
|---|---|---|---|
| p_fail = 0.0005 | 99.9798% | 100.0000% | +0.0202 |
| p_fail = 0.001 | 99.9549% | 100.0000% | +0.0451 |
| p_fail = 0.005 | 99.7192% | 99.9959% | +0.2767 |
| p_fail = 0.01 | 99.3015% | 99.9648% | +0.6634 |
| repair = 2 hours | 99.9855% | 100.0000% | +0.0145 |
| repair = 8 hours | 99.9586% | 100.0000% | +0.0414 |
| repair = 24 hours | 99.8473% | 99.9993% | +0.1520 |
| repair = 72 hours | 99.4320% | 99.9720% | +0.5400 |

***Note:*** *The third server adds less than 0.1 in percentage points of availability at 0.0005, 0.001, 2 hours and 8 hours.*