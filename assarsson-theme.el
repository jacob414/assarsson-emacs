(deftheme assarsson-theme "Low contrast light background, inspired by handmade paper")

(defun color-theme-assarsson ()
   (let ((class '((class color) (min-colors 89)))
         (a-foreground "#262626")
         (a-buffer-id "#e0cf9f")
         (a-background "#949494")
         (a-modeline-fg "#6e6e6e")
         (a-modeline-bg "#666666")
         (a-highlight "#737373")
         (a-current-line "#555555")
         (a-region "#686872")
         (a-cursor "red")
         (a-comment "#374907")
         (a-success "#374907")
         (a-string "#6c3333")
         (a-linum "#6c3333")
         (a-warn "#a40000")
         (a-keyword "#183e5c")
         (a-types "#183e5c")
         (a-constant "#286760")
         (a-variable-name "#18425c")
         )

     (custom-theme-set-faces
      'assarsson-theme
      '(button ((t (:underline t))))
      `(link ((t (:foreground ,a-highlight :underline t :weight bold))))
      `(link-visited ((t (:foreground ,a-highlight :underline t :weight normal))))
      `(escape-glyph ((t (:foreground ,a-highlight :bold t))))
      `(fringe ((t (:foreground ,a-foreground :background ,a-background))))
      `(header-line ((t (:foreground ,a-highlight
                                     :background ,a-background
                                     :box (:line-width -1 :style released-button)))))
      `(highlight ((t (:background ,a-highlight))))
      `(success ((t (:foreground ,a-success :weight bold))))
      `(warning ((t (:foreground ,a-warn :weight bold))))

      ;; Basics
      `(default ((t (:foreground ,a-foreground :background ,a-background))))
      `(cursor ((t (:foreground ,a-cursor :inverse-video t))))

      `(fringe ((t (:foreground ,a-foreground :background ,a-background))))
      `(highlight ((t (:background ,a-highlight))))

      `(region ((,class (:background ,a-region))
                (t :inverse-video t)))

      `(mode-line
        ((,class (:foreground ,a-foreground
                              :background ,a-modeline-fg
                              :box (:line-width -1 :style released-button)))
         (t :inverse-video t)))
      `(mode-line-buffer-id ((t (:foreground ,a-buffer-id :weight bold))))
      `(mode-line-inactive
        ((t (:foreground ,a-foreground
                         :background ,a-modeline-bg
                         :box (:line-width -1 :style released-button)))))

      `(font-lock-builtin-face ((t (:foreground ,a-keyword))))
      `(font-lock-comment-face ((t (:foreground ,a-comment))))
      `(font-lock-comment-delimiter-face ((t (:foreground ,a-comment))))
      `(font-lock-constant-face ((t (:foreground ,a-constant :bold t))))
      `(font-lock-doc-face ((t (:foreground ,a-comment))))
      `(font-lock-doc-string-face ((t (:foreground ,a-string))))
      `(font-lock-function-name-face ((t (:foreground ,a-string))))
      `(font-lock-keyword-face ((t (:foreground ,a-keyword :weight bold))))
      ;; `(font-lock-negation-char-face ((t (:foreground ,"red"))))
      `(font-lock-preprocessor-face ((t (:foreground ,a-constant))))
      `(font-lock-string-face ((t (:foreground ,a-string))))
      `(font-lock-type-face ((t (:foreground ,a-types))))
      `(font-lock-variable-name-face ((t (:foreground ,a-variable-name))))
      `(font-lock-warning-face ((t (:foreground ,a-warn :weight bold))))

      `(c-annotation-face ((t (:inherit font-lock-constant-face))))


      ;; Specifics
      `(highlight-current-line-face ((t (:background ,a-highlight))))
      `(linum ((t (:foreground ,a-linum :background ,a-background))))

      ;; mic-paren
      `(paren-face-match ((t (:foreground ,a-highlight :background ,a-background :weight bold))))
      `(paren-face-mismatch ((t (:foreground ,a-warn :background ,a-background :weight bold))))
      `(paren-face-no-match ((t (:foreground ,a-warn :background ,a-background :weight bold))))
     )

        ;; show-paren
     `(show-paren-mismatch ((t (:foreground ,a-warn :background ,a-background :weight bold))))
     `(show-paren-match ((t (:foreground ,a-highlight :background ,a-background))))


   ) )

;; (color-theme-assarsson) ;; good when tweaking

(provide-theme 'assarsson-theme)
