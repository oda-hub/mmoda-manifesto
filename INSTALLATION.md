# MMODA deployment guide

Deployment via helm charts, using FluxCD for GitOps is considered (but not strictly necessary)

## Components

### Dispatcher

The central point, coordinatesdata flow, exposes data analysis API as well as platform administration endpoints.

* Helm chart https://github.com/oda-hub/dispatcher-chart
* container github.com/oda-hub/dispatcher-container-compact
* external resources with corresponding credentials:
  * SMTP server
  * Sentry
  * Secret key for JWT token validation (corresponds to frontend)
  * (semi-optional) MMODA Product Gallery 
  * (optional) mysql for usage statistic sidecar
  * (optional) Matrix
  * (optional) VO-enabled postgres
  * (for INTEGRAL) dda-interface-token

### Frontend

Legacy Drupal 7.

* Helm chart https://github.com/oda-hub/frontend-chart
* container github.com/oda-hub/frontend-container
* external resources with corresponding credentials:
  * mysql for Drupal. Legacy 5.7 is required. We use the legacy bitnami chart v10.1.1.
  * SMTP server (Swiftmailer)
  * GitHub login (OpenID connect client id/secret)
  * Secret key for JWT token (corresponds to dispatcher)

### Resolver

* Helm chart https://github.com/oda-hub/oda-resolver-chart
* Code, container https://github.com/oda-hub/oda-resolver

### MMODA bot

To build and deploy contributed backends. 

* Helm chart https://github.com/oda-hub/mmodabot-async/tree/main/charts/mmodabot
  * Also requires active sidecars in frontend and dispatcher pods
    * [module_controller](https://github.com/oda-hub/frontend-chart/blob/568fbccc7c15da9e076d4f4106df4754620cd528/values.yaml#L12)
    * [kg_registrar](https://github.com/oda-hub/dispatcher-chart/blob/a6c57b2848f1df26ee5168a514501d5a3d437c39/values.yaml#L18)
* Code and container https://github.com/oda-hub/mmodabot-async
* External credentials (see https://github.com/oda-hub/mmodabot-async/blob/main/packages/mmodabot/NOTES.md):
  * GitLab API token
  * Container registry token
  * (when implemented) SMTP
  * (for some backends) External Resource credentials

### Polar backend

* https://github.com/oda-hub/polar-worker-chart

### INTEGRAL backend

TODO