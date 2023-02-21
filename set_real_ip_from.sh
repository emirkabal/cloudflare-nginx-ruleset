echo "#IPV-4"
for i in `curl -s -L https://www.cloudflare.com/ips-v4`; do
  echo "set_real_ip_from $i;";
done

echo "#IPV-6"
for i in `curl -s -L https://www.cloudflare.com/ips-v6`; do
  echo "set_real_ip_from $i;";
done

echo "real_ip_header CF-Connecting-IP;"