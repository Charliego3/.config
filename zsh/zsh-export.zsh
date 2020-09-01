export CLICOLOR=1
export LS_OPTIONS='--color=auto'           # 如果没有指定，则自动选择颜色
export CLICOLOR='Yes'                      # 是否输出颜色
export LSCOLORS='ExfxcxdxbxegedabagGxGx'   # 指定颜色 蓝色粗体
export PATH=$PATH:/Users/whimthen/dev/bin
### Go Path
export GOPATH=/Users/whimthen/dev/environment/go
### FLUTTER
export PATH="$PATH:/Users/whimthen/dev/environment/flutter/bin"
### Android Home
ANDROID_HOME="/Users/whimthen/dev/environment/android"
export PATH="$PATH:$ANDROID_HOME/tools"
### Android Platform Tools
export PATH="$PATH:$ANDROID_HOME/platform-tools"
### Maven Home
MAVEN_HOME="/Users/whimthen/dev/environment/apache-maven-3.5.4"
export PATH="$PATH:$MAVEN_HOME/bin"
# Pkg Config
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"
# MySQL
MySQL_HOME="/usr/local/mysql"
export PATH="$PATH:$MySQL_HOME/bin"

##############################################################################################################
#######      PROMPT setup
##############################################################################################################
function git_info() {
	if [[ -d '.git' ]]; then
		branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
		if [[ -n "${branch}" ]]; then
		    YS_VCS_PROMPT_PREFIX1=" %B%F{196}on%f "
	        git_status=""
	        if [[ $(echo `git status` | grep "nothing to commit, working tree clean") ]]; then
	            git_status="%B%F{46}✔︎%f"
	        else
	            git_status="%B%F{160}✘%f"
	        fi
	        git="${YS_VCS_PROMPT_PREFIX1}git:%B%F{36}${branch}%f ${git_status}"
	        echo "${git}"
	    fi
	fi
}
export PROMPT="%B%F{21}#%f %F{40}(%n)%f in %F{130}%~%f %F{240}(%*)%f%(?.. C:%F{red}%?)%f %F{196}%(!.>.$)%f%b "
