echo "#IPV-4"
for i in `curl -s -L https://www.cloudflare.com/ips-v4`; do
  echo "allow $i;";
done

echo "#IPV-6"
for i in `curl -s -L https://www.cloudflare.com/ips-v6`; do
  echo "allow $i;";
done

echo "deny all;"