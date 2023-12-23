ping -c 1 8.8.8.8 > test_net.tmp
cat test_net.tmp; rm test_net.tmp

echo "Press any key..."
read key
