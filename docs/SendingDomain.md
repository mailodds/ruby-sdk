# Mailodds::SendingDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Domain UUID | [optional] |
| **domain** | **String** | Domain name | [optional] |
| **domain_type** | **String** | Domain type (ns_delegated) | [optional] |
| **status** | **String** | Domain verification status | [optional] |
| **dkim_selector** | **String** | DKIM selector (e.g. mo1) | [optional] |
| **dns_records** | [**SendingDomainDnsRecords**](SendingDomainDnsRecords.md) |  | [optional] |
| **bimi_svg_url** | **String** | BIMI SVG logo URL | [optional] |
| **bimi_vmc_url** | **String** | BIMI VMC certificate URL | [optional] |
| **bimi_enabled** | **Boolean** | Whether BIMI is enabled | [optional] |
| **forward_replies_to** | **String** | Reply forwarding address | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SendingDomain.new(
  id: null,
  domain: null,
  domain_type: null,
  status: null,
  dkim_selector: null,
  dns_records: null,
  bimi_svg_url: null,
  bimi_vmc_url: null,
  bimi_enabled: null,
  forward_replies_to: null,
  created_at: null,
  updated_at: null
)
```

