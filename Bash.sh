#!/bin/bash

# List of IPs in "IP:PORT" format
PROXY_LIST=("37.120.173.115:80" "183.230.162.122:9091" "183.234.215.11:8443" "162.248.225.22:80" "150.158.12.58:3128" "72.10.164.178:23955" "209.97.150.167:3128" "167.71.5.83:3128" "162.248.225.21:80" "47.98.134.232:808" "217.199.130.242:8080" "52.163.56.148:80" "191.96.251.53:80" "8.219.74.58:8001" "115.144.254.79:28499" "103.154.160.50:80" "124.160.118.183:8080" "65.109.152.88:8888" "102.132.201.202:80" "162.248.225.130:80" "113.208.119.142:9002" "162.248.225.47:80" "194.150.255.207:3128" "118.193.39.206:3128" "162.248.225.35:80" "88.201.217.203:80" "81.70.253.152:8080" "164.132.170.100:80" "103.156.140.238:8080" "72.10.160.90:28051" "113.143.37.82:9002" "162.248.225.19:80" "101.255.150.49:8080" "8.219.74.58:3129" "103.175.230.155:8080" "67.43.228.253:28851" "67.43.227.227:2299" "67.43.236.20:19065" "46.101.115.59:80" "72.10.160.171:19699" "47.250.48.124:80" "179.43.10.0:8085" "113.223.214.227:8089" "176.99.2.43:1081" "169.0.117.6:8080" "117.71.154.194:8089" "67.43.227.227:20371" "67.43.236.20:21209" "162.248.225.156:80" "47.114.101.57:8888" "67.43.228.253:33113" "62.33.207.202:3128" "72.10.164.178:31193" "185.23.108.183:3128" "103.156.248.196:8080" "178.254.138.182:8080" "60.169.44.58:8089" "162.248.225.224:80" "58.253.210.122:8888" "139.155.73.252:3128" "190.61.55.138:999" "47.98.46.112:80" "117.158.146.215:9091" "203.150.199.6:80" "67.43.227.227:8159" "64.189.106.6:3129" "38.180.97.123:80" "49.7.11.187:80" "110.238.116.82:4006" "129.226.52.24:80" "103.164.213.78:8088" "162.248.225.220:80" "153.101.67.170:9002")

# List of User Agents
USER_AGENTS=("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36" 
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15"
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0")

# URL to visit
URL="https://www.toprevenuegate.com/icj1hrt7pd?key=40e6de77327dfa02813c429680adef2f"

# Function to get a random element from an array
get_random_element() {
    array=("$@")
    echo "${array[RANDOM % ${#array[@]}]}"
}

for PROXY in "${PROXY_LIST[@]}"
do
    USER_AGENT=$(get_random_element "${USER_AGENTS[@]}")
    echo "Visiting $URL using Proxy: $PROXY with User Agent: $USER_AGENT"
    
    # Use curl with the proxy option and a random user agent to visit the URL
    curl -x $PROXY -A "$USER_AGENT" $URL
    
    # Add additional parameters/options for curl as needed
done


# List of User Agents
USER_AGENTS=("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36" 
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15"
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0")

# URL to visit
URL="https://example.com"

# Function to get a random element from an array
get_random_element() {
    array=("$@")
    echo "${array[RANDOM % ${#array[@]}]}"
}

for PROXY in "${PROXY_LIST[@]}"
do
    USER_AGENT=$(get_random_element "${USER_AGENTS[@]}")
    echo "Visiting $URL using Proxy: $PROXY with User Agent: $USER_AGENT"
    
    # Use curl with the proxy option and a random user agent to visit the URL
    curl -x $PROXY -A "$USER_AGENT" $URL
    
    # Add additional parameters/options for curl as needed
done
