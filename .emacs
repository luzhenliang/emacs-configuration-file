;;---------------------------------------
;;关闭小工具栏
;;--------------------------------------
(tool-bar-mode -1)

;;--------------------------------------
;;关闭开启时的欢迎界面
(setq inhibit-startup-message t)
(setq indent-tabs-mode t)

;;不产生备份文件
(setq make-backup-files nil)

;;去掉滚动条
(set-scroll-bar-mode nil)

;;设置默认工作目录
(setq default-directory "/home/luxiaoyou/files/emacs/")

;;开启语法高亮
(global-font-lock-mode 1)

;;显示行号
(linum-mode)

;;显示时间
(display-time)

;;显示行号
(column-number-mode t)
;;显示列号
(setq mouse-yank-at-point t)

;;去掉菜单
(menu-bar-mode -1)

;;设置行标
(linum-mode)

;;习惯设置，打开／关闭菜单
(global-set-key [f12] 'menu-bar-mode)


;;开启迷你地图
(global-set-key [f9] 'minimap-mode)

;;开启行号标记
(global-linum-mode 1)
(global-set-key [f8] 'linum-mode)

;;编译el文件
;;byte-compile-file

;;开启org-mode
(global-set-key [f7] 'org-mode)

;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/yougelisp/lisp"))
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d") t)

;;打开图片
(auto-image-file-mode)

(setq default-fill-column 80)

;;设置个人信息
(setq user-full-name "卢小友")
(setq user-mail-address "contact@luxiaoyou.com")

;;
(setq frame-title-format "emacs@%b")


;;显示匹配括号
(show-paren-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

;;设置开启emacs的窗口大小
(setq default-frame-alist  
      '((height . 35) (width . 125) (menu-bar-lines . 0) (tool-bar-lines . 0)))   
(put 'upcase-region 'disabled nil) 

;;写文件编码
(set-buffer-file-coding-system 'utf-8)


;;Emacs 透明 设置    
(global-set-key [(f6)] 'loop-alpha)  ;;绑定快捷键f6开启透明
    
(setq alpha-list '((85 55) (100 100)))    
    
(defun loop-alpha ()    
  (interactive)    
  (let ((h (car alpha-list)))                    
    ((lambda (a ab)    
       (set-frame-parameter (selected-frame) 'alpha (list a ab))    
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))    
       ) (car h) (car (cdr h)))    
    (setq alpha-list (cdr (append alpha-list (list h))))    
    )    
)  


;;---------------------------------------------------
;;start 插件下载包的地盘
;;---------------------------------------------------

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line



(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)



 (defadvice package-compute-transaction
  (before package-compute-transaction-reverse (package-list requirements) activate compile)
    "reverse the requirements"
    (setq requirements (reverse requirements))
    (print requirements))
;;----------------------------------------------------
;;end  插件下载包的地盘
;;-----------------------------------------------------


;;-----------------------------------------------------
;;start   让输入命令变得飞快
;;-----------------------------------------------------

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;;end    让输入命令变得飞快
;;-------------------------------------------------------


(add-to-list 'load-path "/path/to/company")
(autoload 'company-mode "company" nil t)
