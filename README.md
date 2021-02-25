# Manifesto

|||
| :--: | :--: |
| **Version** | 0.1.0 (see tags) |
| **Prepared-By** | _VS_ |
| **Status** | _Draft_ |

## Purpose of ODA

ODA is meant to be **collection of interfaces, adapters, and tools to leverage existing data analysis workflows and workflow management platform**.
It is not meant to be itself an all-around distributed runner system (like was done and is done by various specific project).

### Actually fit-for-purpose

Quite little manpower is dedicated in ODA to features which are not motivated by involved projects. For example, [INTEGRAL project](https://www.isdc.unige.ch) and [SNF-funded multi-messenger transient project]() are key contributors at this time, and will develop features relevant for their specific goals: [multi-instrument cross-calibration](), [multi-messenger transient discoveries](), and [quick-look analysis of fresh INTEGRAL data]().

## Attribution for Data And Software: Provencance

The platform itself contain very limited (if any) additions to scientific data analysis workflows. 
In all cases, these workflows are provided by the experts, and our role is to facilitate the contributions, and make access to the live workflows as well as the workflow results easiers for the users.

Hence, it is vital to recognize that ODA services are not themselves providing the data. We attach **Data and Software Provenance**  to the produced results in order to clearly recognize the collective effort, supported by a varienty of institutions and individuals.

## Right To Replicate

Since we provide **Software as a Service**, users may be in danger of locking-in the platform and depending on our continious support. While this situation could benefitial for us (and is indeed major part of business model of some top services), we consider this kind of behavior immoral, and make effort to allow full deployment of the platform in alternative locations. 

In principle, it should be always possible to move the platform elsewhere, respecting the [right to replicate](https://2i2c.org/right-to-replicate/)

We provide full open software and data, and following the best we can good design practices for cloud-based deployment. 
But we can not make unreasonable effort to assist every alternative deployment.

We can not be responsible for any damage caused by the unsafe deployments (as described in detail in the licences).
