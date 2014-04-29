(custom-set-variables
 ;;  custom-set-variables was added by Custom.
 ;;  If you edit it by hand, you could mess it up, so be careful.
 ;;  Your init file should contain only one such instance.
 ;;  If there is more than one, they won't work right.
;; '(ahk-syntax-directory "D:/Program Files (x86)/AutoHotkey/Extras/Editors/Syntax")
 '(column-number-mode t)
 '(display-time-mode t)
 '(ecb-layout-window-sizes (quote (("left-analyse" (0.2601626016260163 . 0.2558139534883721) (0.2601626016260163 . 0.20930232558139536) (0.2601626016260163 . 0.20930232558139536) (0.2601626016260163 . 0.23255813953488372)))))
 '(jde-compiler (quote ("javac" "")))
 '(jde-complete-function (quote jde-complete-menu))
 '(show-paren-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


(add-to-list 'load-path "~/.emacs.d/jain-config")
(add-to-list 'load-path "~/my-lisps")
(add-to-list 'load-path "~/my-lisps/ext")

(require 'jain-base-config)

;;;;; ------------------------------------------------;;;;;;;;;;;
;;;;; ------------------- tree-widget ----------------;;;;;;;;;;;
;; (setq load-path (append load-path '("~/my-lisps/tree-widget-2.0")))
;; (require 'dir-tree)
;; (require 'tree-widget)
;; (require 'tree-widget-examples)

(require 'jain-cedet-config)

(require 'xcscope)

(require 'jain-ecb-config)

(require 'jain-cflow-config)

;; (require 'ahk-mode)

;;-------------- auto-complete ----------------
(require 'jain-ac-config)

;; ------------- company ----------------------
(add-to-list 'load-path "~/my-lisps/")
(add-to-list 'load-path "~/my-lisps/company-0.5")
(autoload 'company-mode "company" nil t)

;; -------------YASnippet------------------
(add-to-list 'load-path
             "~/my-lisps/yasnippet-0.6.1c")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/my-lisps/yasnippet-0.6.1c/snippets")

;; ------------- clang ----------------------
;; (load-library "clang-completion-mode")
;; (require 'auto-complete-clang)

;;;;; -------------------- c-mode compile debug ------------------;;;;;;;;;;;
(require 'jain-c-mode-config)
(require 'jain-doxymacs-config)

(require 'jain-jdee-config)

;; (require 'guess-offset)
(require 'auto-document)

;;;;; --------------------  highlight-symbol ----------------------;;;;;;;;;;;
;;;;; ---------------------------------------------------------------------;;;;;;;;;;;
(add-to-list 'load-path "/my-lisps/highlight-symbol")
(require 'highlight-symbol)

(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)

;; (setq load-path (append load-path '("~/my-lisps/emacs-w3m/")))
;; (require 'w3m)

(setq load-path (append load-path '("~/my-lisps/nxhtml/nxhtml/")))
(require 'nxhtml)

;; (require 'server)
;; (when (and (= emacs-major-version 23)
;;            (= emacs-minor-version 2)
;;            (equal window-system 'w32))
;;         (defun server-ensure-safe-dir (dir) "Noop" t)) ; Suppress error "directory
                                        ; ~/.emacs.d/server is unsafe"
                                        ; on windows.
;; (require 'plantuml-mode)
(require 'jain-org-mode-config)
(require 'jain-muse-config)
(require 'jain-wiki-config)
(add-to-list 'auto-mode-alist '("w3mtmp" . simple-wiki-mode))
;; (require 'jain-calendar)

(require 'wcy-desktop)
(wcy-desktop-init)

;; ---------------------- session ------------------------------------
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(load-library "clang-completion-mode") 
(require 'auto-complete-clang)

;; (require 'hexview-mode)

;; ensure abbrev mode is always on
;; (setq-default abbrev-mode t)
;; do not bug me about saving my abbreviations
;; (setq save-abbrevs nil)
;; load up modes I use
;; (require 'cc-mode)
;; load up abbrevs for these modes
;; (require 'msf-abbrev)
;; (setq msf-abbrev-root "~/emacs/mode-abbrevs")
;; (msf-abbrev-load)

(add-to-list 'load-path "~/my-lisps/git")
(require 'vc-git)
(when (featurep 'vc-git) (add-to-list 'vc-handled-backends 'git))
(require 'git)
(autoload 'git-blame-mode "git-blame"
  "Minor mode for incremental blame for Git." t)

;; (require 'jain-python-config)

;; use C-c a to define a new abbrev for this mode
(create-fontset-from-fontset-spec
 "-*-courier-medium-r-normal-*-14-*-*-*-*-*-fontset-14")
(set-fontset-font
 "fontset-default" nil
 "-*-hei-*-*-*-*-14-*-*-*-*-*-gb2312.1980-*" nil 'prepend)
(set-fontset-font
 "fontset-14" 'kana
 "-*-hei-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)
(set-fontset-font
 "fontset-14" 'han
 "-*-hei-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)
(set-fontset-font
 "fontset-14" 'cjk-misc
 "-*-hei-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)

;; -------------------- aspell --------------------
(setq-default ispell-program-name "aspell")

;; -------------------- graphviz -----------------
;; (load "graphviz-dot-mode.el" nil t t) 
;; (add-hook 'find-file-hook (lambda()
;;                             (if (string= "dot" (file-name-extension
;;                                                 buffer-file-name))
;;                                 (progn
;;                                   (message "Enabling Setings for dot-mode")
;;                                   (setq fill-column 1000)
;;                                   (base-auto-pair)
;;                                   (local-set-key (kbd "<C-f6>") 'compile)
;;                                   )
;;                               )))

;; -------------------- uml -----------------
(cogre-uml-enable-unicode)

;; ------------------ cmake-mode --------------------
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))

;; ------------------ flymake --------------------
;; (autoload 'flymake-find-file-hook "flymake" "" t)
;; (add-hook 'find-file-hook 'flymake-find-file-hook)
(setq flymake-gui-warnings-enabled nil)
(setq flymake-log-level 0)

;; (server-start)

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
