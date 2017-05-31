(require 'cl)
 
(defun my-set-fontset (fontset alst)
  "set fontset according to alst.
 
The alst contains TARGET FONT-SPEC pairs. TARGET should be from
most specific (latin) to most generic (nil). Otherwise, some
lines will have no effect.
 
see `set-fontset-font' for what could be used for TARGET and FONT-SPEC"
  (loop for (target font-spec) in (reverse alst)
    do (set-fontset-font fontset target font-spec)))
 
(my-set-fontset
 "fontset-startup"
 '((latin " Monaco-10")  ;; 英文字体
   (han "文泉驿微米黑-12")   ;; 中文字体
   (nil "文泉驿微米黑-12"))) ;; 其它所有字符默认字体
 
;; set fontset-startup as current frame's font.
(set-frame-font "fontset-startup" nil t)
 
;; set fontset-startup as default frame font.
(add-to-list 'default-frame-alist '(font . "fontset-startup"))

(provide 'init-fonts)
