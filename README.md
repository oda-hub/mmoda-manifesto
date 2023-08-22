# Manifesto

![image](https://user-images.githubusercontent.com/3909535/124884013-2dd51e80-dfd2-11eb-823f-465c525de135.png)

|||
| :--: | :--: |
| **Version** | 0.1.0 (see tags) |
| **Prepared-By** | _VS_ |
| **Status** | _Draft_ |
| **Latest-Version** | [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6376845.svg)](https://doi.org/10.5281/zenodo.6376845) |

## Purpose of ODA

Multi-Messenge Online Data Analysis (MMODA, or sometimes ODA for brevity) is **collection of interfaces, adapters, and tools to leverage existing data analysis workflows and workflow management platforms**.

### Fit-for-purpose and community-driven

We focus on features motivated directly by involved projects. Original development was supported by [mutualization efforts of UNIGE](https://www.astro.unige.ch/cdci/) but since then ODA evolved into a collective multi-instutute multi-project effort. 

 * AstroORDAS project (SwissUniversities ORD Track B project) currently supports much of MMODA activities.
 * [INTEGRAL telescope project](https://www.isdc.unige.ch) and SNF-funded multi-messenger transient project are key contributors at this time, and develop features relevant for their specific goals: [multi-instrument cross-calibration](https://indico.ict.inaf.it/event/1001/contributions/10148/attachments/5053/10366/OSA11%20-%20ISGRI.pdf), [multi-messenger transient discoveries](http://linked-open-data.space/), and quick-look analysis of fresh INTEGRAL data.
 * [University of Paris and FACE](https://si-apc.pages.in2p3.fr/face-website/service/mmo/) is an important contributor to MMODA. 
 * [SmartSky project with SDSC](https://odahub.io/) allowed to create development environment allowing expert astronomers to create tools [SDSS](https://renkulab.io/gitlab/vladimir.savchenko/oda-sdss).
 * [EuroScienceGateway](https://galaxyproject.org/projects/esg/), although does not support directly support MMODA, enables important synergies on workflow and tool development, cataloging, testing, and publishing.
 

## Open Data = Interoperability Frameworks + Open Policies

**Open data** does not just mean the data which can be freely downloaded. The data needs to be comprehensively described, in order to make **re-use** posssble. This can be achived with **interoperability frameworks**. 

On the hand, interoperability alone does not guaratnee free and attribution-respecing reuse towards goals of the scientific commons. Sharing should be governed with **open policies*.

## Attribution for Data And Software: Provencance

The core platform itself contain very few (if any) additions to scientific data analysis workflows. In all cases, these workflows are provided by the experts, and our role is to facilitate the contributions, and make access to the live workflows as well as the workflow results easiers for the users.

It is vital to recognize that ODA services are not themselves providing the data. We attach **Data and Software Provenance**  to the produced results in order to clearly recognize the collective effort, supported by a varienty of institutions and individuals.

## Right To Replicate

Since we provide **Software as a Service**, users may be in danger of locking-in the platform and depending on our continious support. While this situation could benefitial for us (and is indeed major part of business model of some top services), we consider this kind of behavior immoral, and make effort to allow full deployment of the platform in alternative locations. 

In principle, it should be always possible to move the platform elsewhere, respecting the [right to replicate](https://2i2c.org/right-to-replicate/)

We provide full open software and data, and following the best we can good design practices for cloud-based deployment. 
But we can not make unreasonable effort to assist every alternative deployment.

We can not be responsible for any damage caused by the unsafe deployments (as described in detail in the licences).

## Multi-site ODA federation

Maintaining capacity to replicate allows us to deploy multiple sites. There are currently three publicly-facing sites:

* UNIGE, http://www.astro.unige.ch/mmoda/
* APC/Paris, https://si-apc.pages.in2p3.fr/face-website/service/mmo/
* BITP/Kyiv, https://ui.oda.virgoua.org/mmoda/

Co-existence of these sites is based on the following principles:

* Every frontend, dispatcher, instrument plugin and backend is **equally deployable** at any site. 
* Different **sites may have favorable access to some data**, enabling some special requests.
  * E.g. UNIGE site has access to realtime INTEGRAL data.
* Sites also **send requests to each other**. For example, INTEGRAL SPI-ACS plugin in APC forwards requests to near-realtime data at UNIGE.
* Some requests lead to identical results in different places, ensuring **redundancy**.
* Discovery of sites is facilitated by **linked data mechanisms**, building **distributed knowledge Graph**.

Discovery of services may be facilitated by EOSC Portal.

## Federation across Analysis Platforms
