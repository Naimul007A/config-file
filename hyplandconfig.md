# code setup
`
cat ~/.config/code-flags.conf # for fcitx5 wayland input\
--ozone-platform-hint=x11<br>  
--disable-gpu\
`
 
# FCITX input-related
/etc/security/pam_env.conf
#GLFW_IM_MODULE         DEFAULT=ibus
GLFW_IM_MODULE          DEFAULT=fcitx5
GTK_IM_MODULE           DEFAULT=fcitx5
INPUT_METHOD            DEFAULT=fcitx5
XMODIFIERS              DEFAULT=@im=fcitx5
IMSETTINGS_MODULE       DEFAULT=fcitx5
QT_IM_MODULE            DEFAULT=fcitx5
SDL_IM_MODULE           DEFAULT=fcitx5
