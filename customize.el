;;(put 'erase-buffer 'disabled nil)
(setq gc-cons-threshold best-gc-cons-threshold)

;; no ".~" files
(setq make-backup-files nil)

;;cua mode
(cua-mode 1)

;;color theme
(require 'color-theme-sanityinc-solarized)

(color-theme-sanityinc-solarized--define-theme light)

;;undo-tree-mode
(global-undo-tree-mode)
;; artbolocks-mode
(artbollocks-mode nil)
;;maximize-window
(global-set-key [f12] 'my-maximized)
(defun my-maximized ()
(interactive)
(x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)) (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
 )

;;imaxima
(add-to-list 'load-path "/usr/local/maxima-5.40.0/interfaces/emacs/imaxima")
(autoload 'imaxima "imaxima" "Image support for Maxima." t)
(autoload 'imath-mode "imath" "Imath mode for math formula input" t)

;;hexo
(require 'hexo)

(defun hexo-my-blog ()
    (interactive)
    (hexo "~/org/kownledge/blog/"))
(setq hexo-posix-compatible-shell-file-path "/bin/bash")


