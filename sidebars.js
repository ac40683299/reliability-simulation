const sidebars = {
  docs: [
    {
      type: 'doc',
      id: 'introduction',
      label: 'Introduction',
    },
    {
      type: 'doc',
      id: 'single-server-simulation',
      label: 'Single Server Simulation',
    },
    {
      type: 'doc',
      id: 'single-server-results',
      label: 'Single Server Results',
    },
    {
      type: 'doc',
      id: 'active-passive-pair',
      label: 'Active-Passive Pair',
    },
    {
      type: 'doc',
      id: 'three-server-cluster',
      label: 'Three-Server Cluster',
    },
    {
      type: 'category',
      label: 'Required Experiments',
      collapsed: false,
      items: [
        {
          type: 'doc',
          id: 'required-experiments/failure-rate-sweep',
          label: 'Failure Rate Sweep',
        },
        {
          type: 'doc',
          id: 'required-experiments/repair-time-sweep',
          label: 'Repair Time Sweep',
        },
        {
          type: 'doc',
          id: 'required-experiments/third-server',
          label: 'Marginal Value of the Third Server',
        },
      ],
    },
    {
      type: 'doc',
      id: 'raid-simulation',
      label: 'RAID Simulation',
    },
  ],
};

export default sidebars;