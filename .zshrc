# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# 主题
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
# 补全
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# 高亮
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
#export http_proxy="http://$host_ip:7890"
#export https_proxy="https://$host_ip:7890"
# set the git proxy
#if [ "`git config --global --get proxy.https`" != "socks5://$host_ip:7891" ]; then
#            git config --global proxy.https socks5://$host_ip:7891
#fi
if [ "`git config --global --get proxy.https`" != "https://$host_ip:7890" ]; then
            git config --global proxy.https https://$host_ip:7890
fi

# 添加miniconda环境变量
source /opt/miniconda/etc/profile.d/conda.sh

# git提交便捷方式
acp() {
  git add .
  git commit -m $1
  git push
}

# GOPATH
export GOPATH=/home/greenhandzpx/go_path
# 配置 GOPROXY 环境变量
#go env -w GOPROXY=https://goproxy.cn,direct
export GOPROXY=https://goproxy.cn,direct
export PATH=$PATH:/home/greenhandzpx/Downloads/riscv-pk/build/dist/riscv64-linux-gnu/bin
