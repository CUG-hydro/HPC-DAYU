module load gcc/9.3.0
module load netcdf-c/4.7.4-gcc930

## VPN for Internet
vpn=http://172.16.10.253:1080
# git config --global http.proxy ${vpn}
# git config --global https.proxy ${vpn}
export http_proxy=${vpn}
export http_proxys=${vpn}
#export HTTP_PROXY=${vpn}

julia="/opt/julia-1.5.2/bin"
R="/opt/R/4.0.3/bin"

export ZSH="/share/home/kong/.oh-my-zsh"
export PATH="${julia}:${R}:/usr/local/ncftp/bin:/opt/anaconda3/bin:/share/home/kong/opt/ubuntu-config/bin:/usr/local/bin:/sbin:"$PATH
#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

export LD_LIBRARY_PATH="/opt/anaconda3/lib:/share/intel/2020u1/intelpython3/lib"
export NODE_PATH=/usr/local/lib/node_modules

# export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export DISPLAY=:0.0
export XDG_RUNTIME_DIR=/tmp/runtime-kong

alias ll='ls -alFh'
alias la='ls -Ah'
