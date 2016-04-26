(package-initialize)

;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;			 ("marmalade" . "http://marmalade-repo.org/p;ackages/")
;			  ("melpa" . "http://melpa.milkbox.net/packa;ges/")))

(add-to-list 'package-archives'("popkit" . "http://elpa.popkit.org/packages/"))

(custom-set-variables
 '(display-battery-mode t)
 '(display-time-mode t)
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(send-mail-function nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
;不显示工具栏

(custom-set-faces
 '(default ((t (:family "文泉驿等宽微米黑" :foundry "unknown" :slant normal :weight normal :height 158 :width normal)))));设置字体

(global-linum-mode t)

(desktop-save-mode 1);保存布局

(font-lock-add-keywords 'lisp-mode '("[(]" "[)]"));lisp模式匹配括号

(global-hl-line-mode 1);高亮当前行

(set-foreground-color "green");设置前景色

(set-background-color "#272822");设置背景色

(set-mouse-color "red");设置光标颜色

(set-face-foreground 'highlight "#0000000");设置前景高亮色

(set-face-background 'highlight "#383830");设置背景高亮色

(set-face-foreground 'region "#FFFFFF");设置区域前景色

(set-face-background 'region "#383830");设置区域背景色

(set-face-foreground 'secondary-selection "skyblue");设置二次选择前景色

(set-face-background 'secondary-selection "darkblue");设置二次选择背景色

(setq show-parse--mode t)

(global-font-lock-mode t);打开语法高亮

(blink-cursor-mode -1);关闭光标闪动

(setq cursor-type '(bar . 2));设置光标宽度

(setq ecb-auto-activate t);自动启动ecb

(setq ecb-tip-of-the-day nil);关闭ecb每日提示

(global-set-key (kbd "<f12>") 'ecb-activate);设置F12键打开ecb

(global-set-key (kbd "C-<f12>") 'ecb-deactivate);设置c-F12关闭ecb

(global-set-key (kbd "<f8>") 'windmove-left);设置Ｆ8移动到ecb左窗口

(global-set-key (kbd "<f9>") 'windmove-right);设置Ｆ9移动到ecb右窗口

(global-set-key (kbd "<f7>") 'ecb-restore-default-window-sizes);设置Ｆ7恢复ecb窗口

(setq make-backup-files nil);关闭自动备份功能

(setq auto-save-default nil);不生成名为#filename#的临时文件

(setq echo-keystrokes 0.1);尽快显示按键序列提示

(global-set-key (kbd "<f6>") 'ace-window);绑定切换窗口快捷键

(setq aw-background nil);选择窗口时不显示灰色背景

(fset 'yes-or-no-p 'y-or-n-p);简化yes和no为y和n

(global-set-key (kbd "<f5>") 'calendar);为日历设置快捷键

(setq calendar-week-start-day 1);设置日历从星期一开始

;;为日历设置经纬度
(setq calendar-latitude 28.372144)
(setq calendar-longitude 112.814784)
(setq calendar-location-name "ChangSha")

;;加载配置文件
(defun add-subdirs-to-load-path (dir)
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "/home/hxp/.myEmacs")

(require 'highlight-parentheses);加载highlight插件
