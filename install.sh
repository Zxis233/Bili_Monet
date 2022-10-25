SKIPMOUNT=false
LATESTARTSERVICE=false
POSTFSDATA=false
PROPFILE=false
print_modname() {
 ui_print "*******************************"
 ui_print "     	Magisk Module        "
 ui_print "Make By 小白杨（爱玩机工具箱）"
 ui_print "*******************************"
}
on_install() {
 ui_print "- 正在释放文件"
 unzip -o "$ZIPFILE" 'system/priv-app/MonetBili.apk' -d $MODPATH >&2
}
set_permissions() {
 set_perm_recursive $MODPATH 0 0 0755 0644
#设置权限，基本不要去动
}