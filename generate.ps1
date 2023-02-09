$cloudflare_ips = Invoke-WebRequest -Uri 'https://www.cloudflare.com/ips-v4' -UseBasicParsing
$cloudflare_ips = $cloudflare_ips.Content
$cloudflare_ips = $cloudflare_ips -split "`n"
$cloudflare_ips = $cloudflare_ips | where { $_ -ne "" }
$cloudflare_ips = $cloudflare_ips | foreach { "allow $_;" }
$cloudflare_ips = $cloudflare_ips -join "`n"

WRITE-OUTPUT "#IPV-4"
WRITE-OUTPUT $cloudflare_ips

$cloudflare_ips = Invoke-WebRequest -Uri 'https://www.cloudflare.com/ips-v6' -UseBasicParsing
$cloudflare_ips = $cloudflare_ips.Content
$cloudflare_ips = $cloudflare_ips -split "`n"
$cloudflare_ips = $cloudflare_ips | where { $_ -ne "" }
$cloudflare_ips = $cloudflare_ips | foreach { "allow $_;" }
$cloudflare_ips = $cloudflare_ips -join "`n"

WRITE-OUTPUT "#IPV-6"
WRITE-OUTPUT $cloudflare_ips

WRITE-OUTPUT "deny all;"
