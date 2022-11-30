# SysFlow Notebooks

This repository contains educational SysFlow notebooks.

| **Notebook** | **Description** | **Live environment** |
|---|---|---|
| pynb/FloCon2021 | Notebook for the [FloCon'21 conference](https://www.hacktheuniverse.tech/provenance-tracking-with-attack-graphs-using-sysflow/) demo | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/sysflow-telemetry/sf-lab/blob/main/pynb/FloCon2021.ipynb) |
| pynb/AI4Sec2021 | Notebook for the [AI/ML for Cyber Security 2021 workshop](https://www.hacktheuniverse.tech/provenance-tracking-with-attack-graphs-using-sysflow/) demo | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/sysflow-telemetry/sf-lab/blob/main/pynb/AI4Sec2021.ipynb) |
| pynb/BHEurope21-Demo | Notebook for the [BlackHat Europe'21 Arsenal](https://www.blackhat.com/eu-21/arsenal/schedule/index.html#an-open-stack-for-threat-hunting-in-hybrid-cloud-with-connected-observability-25112) demo | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/sysflow-telemetry/sf-lab/blob/main/pynb/BHEurope21-Demo.ipynb) |
| pynb/AvengerCon22 | Notebook for the [AvengerCon'22 workshop](https://www.hacktheuniverse.tech/provenance-tracking-with-attack-graphs-using-sysflow/) tutorial | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/sysflow-telemetry/sf-lab/blob/main/pynb/AvengerCon22.ipynb) |

# What is SysFlow?

The SysFlow Telemetry Pipeline is a framework for monitoring cloud workloads and for creating performance and security analytics. The goal of this project is to build all the plumbing required for system telemetry so that users can focus on writing and sharing analytics on a scalable, common open-source platform. The backbone of the telemetry pipeline is a new data format called SysFlow, which lifts raw system event information into an abstraction that describes process behaviors, and their relationships with containers, files, and network. This object-relational format is highly compact, yet it provides broad visibility into container clouds. We have also built several APIs that allow users to process SysFlow with their favorite toolkits. Learn more about SysFlow in the [SysFlow specification document](https://sysflow.readthedocs.io/en/latest/spec.html).

The SysFlow framework consists of the following sub-projects:

- [sf-apis](https://github.com/sysflow-telemetry/sf-apis) provides the SysFlow schema and programatic APIs in go, python, and C++.
- [sf-collector](https://github.com/sysflow-telemetry/sf-collector) monitors and collects system call and event information from hosts and exports them in the SysFlow format using Apache Avro object serialization.
- [sf-processor](https://github.com/sysflow-telemetry/sf-processor) provides a performance optimized policy engine for processing, enriching, filtering SysFlow events, generating alerts, and exporting the processed data to various targets.
- [sf-exporter](https://github.com/sysflow-telemetry/sf-exporter) exports SysFlow traces to S3-compliant storage systems for archival purposes.
- [sf-deployments](https://github.com/sysflow-telemetry/sf-deployments) contains deployment packages for SysFlow, including Docker, Helm, and OpenShift.
- [sysflow](https://github.com/sysflow-telemetry/sysflow) is the documentation repository and issue tracker for the SysFlow framework.
