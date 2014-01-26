1;; no start-up, back-up
(setq inhibit-startup-message t)
(setq make-backup-file nil)
(setq auto-save-default nil)
(setq backup-inhibited t)

;; minibuffer
(savehist-mode t)
(setq history-length 3500)

;; iswitchb
(iswitchb-mode 1)

;; 更新されてたらバッファ読み直し
(global-auto-revert-mode t)

;; METAタグ無視(html時の文字コードetc)
(delete 'sgml-html-meta-auto-coding-function auto-coding-functions)

;; Bell
(setq ring-bell-function 'ignore)

;; yes or no を y or n に
(fset 'yes-or-no-p 'y-or-n-p)

;; 行末空白削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; symlink to truename
(setq-default find-file-visit-truename t)

;; 保完可能なものを随時表示
(icomplete-mode 1)

;; 補完
(setq partial-completion-mode 1)

;; find-file 大文字小文字
(setq completion-ignore-case t)

;; case insensitive
(custom-set-variables
 '(read-file-name-completion-ignore-case t))
