;;---------------------------------------
;;ѡ��С������ͼ��
;;--------------------------------------
(tool-bar-mode -1)

;;--------------------------------------
;;�رտ�������
(setq inhibit-startup-message t)
(setq indent-tabs-mode t)

;;�����������ļ�
(setq make-backup-files nil)

;;ȥ��������
(set-scroll-bar-mode nil)

;;����Ĭ�Ϲ���Ŀ¼
(setq default-directory "/home/luxiaoyou/files/emacs/")

;;�����﷨����
(global-font-lock-mode 1)

;;��ʾ�к�
(linum-mode)

;;��ʾʱ��
(display-time)

;;��ʾ�к�
(column-number-mode t)
;;��ʾ�к�
(setq mouse-yank-at-point t)

;;ȥ���˵�
(menu-bar-mode -1)

;;�����б�
(linum-mode)

;;ϰ�����ã��򿪣��رղ˵�
(global-set-key [f12] 'menu-bar-mode)


;;���������ͼ
(global-set-key [f9] 'minimap-mode)

;;�����кű��
(global-linum-mode 1)
(global-set-key [f8] 'linum-mode)

;;����el�ļ�
;;byte-compile-file

;;����org-mode
(global-set-key [f7] 'org-mode)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/yougelisp/lisp"))
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d") t)

;;��ͼƬ
(auto-image-file-mode)

(setq default-fill-column 80)

;;���ø�����Ϣ
(setq user-full-name "¬С��")
(setq user-mail-address "contact@luxiaoyou.com")

;;
(setq frame-title-format "emacs@%b")


;;��ʾƥ������
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

;;���ÿ���emacs�Ĵ��ڴ�С
(setq default-frame-alist  
      '((height . 35) (width . 125) (menu-bar-lines . 0) (tool-bar-lines . 0)))   
(put 'upcase-region 'disabled nil) 

;;д�ļ�����
(set-buffer-file-coding-system 'utf-8)


;;Emacs ͸�� ����    
(global-set-key [(f6)] 'loop-alpha)  ;;ע�������е�F8 , ���Ըĳ�����Ҫ�İ���    
    
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
;;start ������ذ��ĵ���
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
;;end  ������ذ��ĵ���
;;-----------------------------------------------------


;;-----------------------------------------------------
;;start   �����������÷ɿ�
;;-----------------------------------------------------

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;;end    �����������÷ɿ�
;;-------------------------------------------------------


(add-to-list 'load-path "/path/to/company")
(autoload 'company-mode "company" nil t)
