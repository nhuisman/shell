# Tell ls to be colourful
export CLICOLOR=2

export LSCOLORS=GxFxCxDxBxegedabagaced

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

Decoration1="\[\e[90m\]╔["
RegularUserPart="\[\e[36m\]\u"
RootUserPart="\[\e[31m\]\u\[\e[m\]"
Between="\[\e[90m\]@"
HostPart="\[\e[32m\]\h:"
PathPart="\[\e[93;1m\]\w"
Decoration2="\[\e[90m\]]\n╚>\[\e[m\]"
case `id -u` in
    0) export PS1="$Decoration1$RootUserPart$Between$HostPart$PathPart$Decoration2# ";;
    *) export PS1="$Decoration1$RegularUserPart$Between$HostPart$PathPart$Decoration2$ ";;
esac
