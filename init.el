;; -*- coding: utf-8 -*-
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar best-gc-cons-threshold 4000000 "Best default gc threshold value. Should't be too big.")
;; don't GC during startup to save time
(setq gc-cons-threshold most-positive-fixnum)
;; set frame size
(setq default-frame-alist
      '((height . 100)(width . 100)(menubar-lines . 20)(tool-bar-lines . 0)))

(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *is-a-mac* (eq system-type 'darwin))
(setq *win64* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *emacs24* (and (not (featurep 'xemacs)) (or (>= emacs-major-version 24))) )
(setq *no-memory* (cond
                   (*is-a-mac*
                    (< (string-to-number (nth 1 (split-string (shell-command-to-string "sysctl hw.physmem")))) 4000000000))
                   (*linux* nil)
                   (t nil)))

;; *Message* buffer should be writable in 24.4+
(when (boundp 'messages-buffer-mode-hook)
  (defun messages-buffer-mode-hook-setup ()
    (read-only-mode -1))
  (add-hook 'messages-buffer-mode-hook 'messages-buffer-mode-hook-setup))

;; @see https://www.reddit.com/r/emacs/comments/3kqt6e/2_easy_little_known_steps_to_speed_up_emacs_start/
;; Normally file-name-handler-alist is set to
;; (("\\`/[^/]*\\'" . tramp-completion-file-name-handler)
;; ("\\`/[^/|:][^/|]*:" . tramp-file-name-handler)
;; ("\\`/:" . file-name-non-special))
;; Which means on every .el and .elc file loaded during start up, it has to runs those regexps against the filename.
(let ((file-name-handler-alist nil))
  (require 'init-modeline)
  (require 'cl-lib)
  (require 'init-compat)
  (require 'init-utils)
  (require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
  (require 'idle-require)
  (require 'init-elpa)
  (require 'init-frame-hooks)
  (require 'init-fonts)
  (require 'init-spelling)
  (require 'init-xterm)
  (require 'init-gui-frames)
  (require 'init-ido)
  (require 'init-uniquify)
  (require 'init-ibuffer)
  (require 'init-flymake)
  (require 'init-smex)
  (require 'init-ivy)
  (require 'init-hippie-expand)
  (require 'init-windows)
  (require 'init-sessions)
  (require 'init-git)
  (require 'init-crontab)
  (require 'init-markdown)
  (require 'init-org)
  (require 'init-python-mode)
  (require 'init-lisp)
  (require 'init-elisp)
  (require 'init-yasnippet)
  (require 'init-zencoding-mode)
  (require 'init-cc-mode)
  (require 'init-gud)
  (require 'init-linum-mode)
  (require 'init-gtags)
  (require 'init-sh)
  (require 'init-ctags)
  (require 'init-bbdb)
  (require 'init-workgroups2)
  (require 'init-term-mode)
  (require 'init-web-mode)
  (require 'init-slime)
  (require 'init-clipboard)
  (require 'init-company)
  (require 'init-httpd)
  (require 'init-org-ref)
  (require 'init-auctex)
  (require 'init-misc)
  (require 'init-emacs-w3m)
  (require 'init-hydra)
  (require 'init-which-func)
  (require 'init-csv)
  (require 'init-writting)
  (require 'init-doxygen)
  (require 'init-emacspeak)
  (require 'init-artbollocks-mode)
  (require 'init-semantic)
  (require 'xcscope)
  (require 'cdlatex)

  (when (require 'time-date nil t)
    (message "Emacs startup time: %d seconds."
             (time-to-seconds (time-since emacs-load-start-time))))

  ;;----------------------------------------------------------------------------
  ;; Locales (setting them earlier in this file doesn't work in X)
  ;;----------------------------------------------------------------------------
  (require 'init-locales)

  ;; my personal setup, other major-mode specific setup need it.
  ;; It's dependent on init-site-lisp.el
  (if (file-exists-p "~/.emacs.d/customize.el") (load-file "~/.emacs.d/customize.el"))
  )

;;; Local Variables:
;;; no-byte-compile: t
;;; End:




