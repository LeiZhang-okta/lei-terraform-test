provider "okta" {
  org_name  = <okta instance name, e.g. dev-XXXXXX>
  api_token = <okta instance api token with the Administrator role>
  base_url  = <okta base url, e.g. oktapreview.com>

  // Optional settings, https://en.wikipedia.org/wiki/Exponential_backoff
  max_retries      = <number of retries on api calls, default: 5>
  backoff          = <enable exponential backoff strategy for rate limits, default = true>
  min_wait_seconds = <min number of seconds to wait on backoff, default: 30>
  max_wait_seconds = <max number of seconds to wait on backoff, default: 300>
}
