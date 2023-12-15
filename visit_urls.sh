#!/bin/bash

# List of IPs in "IP:PORT" format
PROXY_LIST=("64.225.8.132:10002" "173.245.49.145:80" "173.245.49.5:80" "185.162.228.67:80" "23.227.38.213:80" "172.67.43.160:80" "172.67.43.110:80" "172.67.182.13:80" "172.64.203.2:80" "172.67.88.21:80" "172.67.193.208:80" "172.67.38.193:80" "172.67.213.163:80" "172.67.70.200:80" "173.245.49.137:80" "172.67.229.27:80" "45.12.30.159:80" "45.14.174.98:80" "185.162.229.99:80" "185.162.228.231:80" "185.162.230.70:80" "173.245.49.75:80" "45.12.31.14:80" "172.64.153.236:80" "103.21.244.209:80" "141.101.120.159:80" "141.101.122.143:80" "45.131.6.135:80" "63.141.128.33:80" "66.235.200.144:80" "172.64.88.89:80" "173.245.49.199:80" "195.137.167.74:80" "172.64.102.11:80" "63.141.128.195:80" "141.101.114.87:80" "172.67.181.85:80" "172.67.182.113:80" "172.67.181.87:80" "172.67.70.173:80" "172.67.167.67:80" "172.67.176.56:80" "45.12.30.177:80" "23.227.38.105:80" "185.162.230.66:80" "185.162.228.84:80" "45.8.106.180:80" "185.162.230.238:80" "45.8.107.122:80" "45.8.107.55:80" "45.12.30.149:80" "172.67.0.25:80" "172.67.75.189:80" "172.67.43.240:80" "185.238.228.221:80" "172.67.181.229:80" "172.67.181.239:80" "172.67.192.41:80" "172.67.134.82:80" "172.64.169.233:80" "172.64.155.36:80" "141.101.120.149:80" "141.101.121.51:80" "45.131.4.54:80")

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
