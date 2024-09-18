title: /^tmux/
-

##############################################################################
# HACK: For some reason, all of the useful functionality in the community repo
# is implemented in tmux_linux.talon instead of tmux.talon. I use the same tmux
# config on my Linux machine as my macOS machine, and I want the same
# functionality in both environments. The code below was copy-pasted from
# tmux_linux.talon as a workaround.
##############################################################################

mux: "tmux "

#session management
mux new session: insert("tmux new ")
mux sessions:
    key(ctrl-b)
    key(s)
mux name session:
    key(ctrl-b)
    key($)
mux kill session: insert("tmux kill-session -t ")
#window management
mux new window:
    key(ctrl-b)
    key(c)
mux window <number>:
    key(ctrl-b)
    key('{number}')
mux previous window:
    key(ctrl-b)
    key(p)
mux next window:
    key(ctrl-b)
    key(n)
mux rename window:
    key(ctrl-b)
    key(,)
mux close window:
    key(ctrl-b)
    key(&)
#pane management
mux split horizontal:
    key(ctrl-b)
    key(%)
mux split vertical:
    key(ctrl-b)
    key(")
mux next pane:
    key(ctrl-b)
    key(o)
mux move <user.arrow_key>:
    key(ctrl-b)
    key(arrow_key)
mux close pane:
    key(ctrl-b)
    key(x)
#Say a number right after this command, to switch to pane
mux pane numbers:
    key(ctrl-b)
    key(q)