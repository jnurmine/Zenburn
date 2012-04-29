;;; zenburn-theme.el --- Dark and clean theme

;; Copyright (C) 2011 Free Software Foundation, Inc.

;; Author: Dirk-Jan C. Binnema <djcb@djcbsoftware.nl>
;; Created: 2011-05-02

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;; <http://www.gnu.org/licenses/>.

;; zenburn theme, a nice low-contrast theme

(deftheme zenburn
  "The Zenburn theme.")

(let ( (zenburn-fg		"#dcdccc")
       (zenburn-bg-1		"#2b2b2b")
       (zenburn-bg		"#3f3f3f")
       (zenburn-bg+1		"#4f4f4f")
       (zenburn-bg+2		"#5f5f5f")
       (zenburn-red+1		"#dca3a3")
       (zenburn-red		"#cc9393")
       (zenburn-red-1		"#bc8383")
       (zenburn-red-2		"#ac7373")
       (zenburn-red-3		"#9c6363")
       (zenburn-red-4		"#8c5353")
       (zenburn-orange		"#dfaf8f")
       (zenburn-yellow		"#f0dfaf")
       (zenburn-yellow-1	"#e0cf9f")
       (zenburn-yellow-2	"#d0bf8f")

       (zenburn-green-4         "#2e3330")
       (zenburn-green-1		"#5f7f5f")
       (zenburn-green		"#7f9f7f")
       (zenburn-green+1		"#8fb28f")
       (zenburn-green+2		"#9fc59f")
       (zenburn-green+3		"#afd8af")
       (zenburn-green+4		"#bfebbf")
       (zenburn-cyan		"#93e0e3")
       (zenburn-blue+1		"#94bff3")
       (zenburn-blue		"#8cd0d3")
       (zenburn-blue-1		"#7cb8bb")
       (zenburn-blue-2		"#6ca0a3")
       (zenburn-blue-3		"#5c888b")
       (zenburn-blue-4		"#4c7073")
       (zenburn-blue-5		"#366060")
       (zenburn-magenta		"#dc8cc3"))

  (custom-theme-set-faces
    'zenburn

    ;; setup for inheritance
    `(zenburn-background ((t (:background ,zenburn-bg))))
    `(zenburn-background-1 ((t (:background ,zenburn-bg+1))))
    `(zenburn-background-2 ((t (:background ,zenburn-bg+2))))
    `(zenburn-primary-1 ((t (:foreground ,zenburn-yellow-1 :weight bold))))
    `(zenburn-primary-2 ((t (:foreground ,zenburn-orange :weight bold))))
    '(zenburn-primary-3 ((t (:foreground "#dfdfbf" :weight bold))))
    '(zenburn-primary-4 ((t (:foreground "#dca3a3" :weight bold))))
    '(zenburn-primary-5 ((t (:foreground "#94bff3" :weight bold))))
    '(zenburn-highlight-damp ((t (:foreground "#88b090" :background "#2e3330"))))
    '(zenburn-highlight-alerting ((t (:foreground "#e37170" :background "#332323"))))
    '(zenburn-highlight-subtle ((t (:background "#464646"))))
    '(zenburn-lowlight-1 ((t (:foreground "#606060"))))
    '(zenburn-lowlight-2 ((t (:foreground "#708070"))))
    `(zenburn-yellow ((t (:foreground ,zenburn-yellow))))
    `(zenburn-orange ((t (:foreground ,zenburn-orange))))
    `(zenburn-red ((t (:foreground ,zenburn-red))))
    `(zenburn-red-1 ((t (:foreground ,zenburn-red-1))))
    `(zenburn-red-2 ((t (:foreground ,zenburn-red-2))))
    `(zenburn-red-3 ((t (:foreground ,zenburn-red-3))))
    `(zenburn-red-4 ((t (:foreground ,zenburn-red-4))))
    `(zenburn-green-1 ((t (:foreground ,zenburn-green-1))))
    `(zenburn-green ((t (:foreground ,zenburn-green))))
    `(zenburn-green+1 ((t (:foreground ,zenburn-green+1))))
    `(zenburn-green+2 ((t (:foreground ,zenburn-green+2))))
    `(zenburn-green+3 ((t (:foreground ,zenburn-green+3))))
    `(zenburn-green+4 ((t (:foreground ,zenburn-green+4))))
    `(zenburn-blue ((t (:foreground ,zenburn-blue))))
    `(zenburn-blue-1 ((t (:foreground ,zenburn-blue-1))))
    `(zenburn-blue-2 ((t (:foreground ,zenburn-blue-2))))
    `(zenburn-blue-3 ((t (:foreground ,zenburn-blue-3))))
    `(zenburn-blue-4 ((t (:foreground ,zenburn-blue-4))))
    '(zenburn-title ((t (:inherit 'variable-pitch :weight bold))))

    ;; basics
    '(Bold ((t (:weight bold))))
    '(bold-italic ((t (:slant italic :weight bold))))
    `(default ((t (:background ,zenburn-bg :foreground ,zenburn-fg))))
    '(fixed-pitch ((t (:weight bold))))
    '(italic ((t (:slant italic))))
    '(underline ((t (:underline t))))


    '(fringe ((t (:inherit 'default))))
    '(header-line ((t (:inherit 'zenburn-highlight-damp
			:box (:color "#2e3330" :line-width 2)))))
    '(highlight ((t (:weight bold :underline t))))
    '(hover-highlight ((t (:underline t :foreground "#f8f893"))))
    '(match ((t (:weight bold))))
    `(menu ((t (:background "#1e2320"))))
    `(mode-line-inactive ((t (:background ,zenburn-green-4 :foreground "#88b090"
			       :box (:color "#2e3330" :line-width 2)))))
    '(mouse ((t (:inherit 'zenburn-foreground))))
    '(paren ((t (:inherit 'zenburn-lowlight-1))))
    '(trailing-whitespace ((t (:inherit font-lock-warning))))
    `(Buffer-menu-buffer ((t (:inherit 'zenburn-primary-1))))
    `(border ((t (:background ,zenburn-bg))))
    `(button ((t (:foreground ,zenburn-yellow :background "#506070"
		   :weight bold :underline t))))
    `(cursor ((t (:background "#aaaaaa" :foreground nil))))
    `(escape-glyph-face ((t (:foreground ,zenburn-red))))
    `(minibuffer-prompt ((t (:foreground ,zenburn-yellow))))
    `(mode-line ((t (:foreground ,zenburn-yellow :background "#1e2320"
		      :box (:color "#1e2320" :line-width 2)))))
    `(region ((t (:foreground nil :background ,zenburn-bg+2))))
    `(scroll-bar ((t (:background ,zenburn-bg+2))))
    `(secondary-selection ((t (:foreground nil :background ,zenburn-bg+2))))
    `(tool-bar ((t (:background ,zenburn-bg+2))))

    ;; apt-utils
    '(apt-utils-normal-package ((t (:inherit 'zenburn-primary-1))))
    '(apt-utils-virtual-package ((t (:inherit 'zenburn-primary-2))))
    '(apt-utils-field-keyword ((t (:inherit font-lock-doc))))
    '(apt-utils-field-contents ((t (:inherit font-lock-comment))))
    '(apt-utils-summary ((t (:inherit bold))))
    '(apt-utils-description ((t (:inherit default))))
    '(apt-utils-version ((t (:inherit 'zenburn-blue))))
    '(apt-utils-broken ((t (:inherit font-lock-warning))))

    ;; breakpoint
    '(breakpoint-enabled-bitmap ((t (:inherit 'zenburn-primary-1))))
    '(breakpoint-disabled-bitmap ((t (:inherit font-lock-comment))))

    ;; calendar
    '(calendar-today ((t (:underline nil :inherit 'zenburn-primary-2))))

    ;; change-log
    '(change-log-date ((t (:inherit 'zenburn-blue))))

    ;; circe
    '(circe-highlight-nick-face ((t (:inherit 'zenburn-primary-1))))
    '(circe-my-message-face ((t (:inherit 'zenburn-yellow))))
    '(circe-originator-face ((t (:inherit bold))))
    '(circe-prompt-face ((t (:inherit 'zenburn-primary-1))))
    '(circe-server-face ((t (:inherit font-lock-comment-face))))

    ;; comint
    '(comint-highlight-input ((t (:inherit 'zenburn-primary-1))))
    '(comint-highlight-prompt ((t (:inherit 'zenburn-primary-2))))

    ;; compilation
    '(compilation-info ((t (:inherit 'zenburn-primary-1))))
    '(compilation-warning ((t (:inherit font-lock-warning))))

    ;; cua
    '(cua-rectangle ((t (:inherit region))))

    ;; custom
    '(custom-button ((t (:inherit fancy-widget-button))))
    '(custom-button-pressed ((t (:inherit fancy-widget-button-pressed))))
    '(custom-changed ((t (:inherit 'zenburn-blue))))
    '(custom-comment ((t (:inherit font-lock-doc))))
    '(custom-comment-tag ((t (:inherit font-lock-doc))))
    '(custom-documentation ((t (:inherit font-lock-doc))))
    '(custom-link ((t (:inherit 'zenburn-yellow :underline t))))
    '(custom-tag ((t (:inherit 'zenburn-primary-2))))
    '(custom-group-tag ((t (:inherit 'zenburn-primary-1))))
    '(custom-group-tag-1 ((t (:inherit 'zenburn-primary-4))))
    '(custom-invalid ((t (:inherit font-lock-warning))))
    '(custom-modified ((t (:inherit 'zenburn-primary-3))))
    '(custom-rogue ((t (:inherit font-lock-warning))))
    '(custom-saved ((t (:underline t))))
    '(custom-set ((t (:inverse-video t :inherit 'zenburn-blue))))
    '(custom-state ((t (:inherit font-lock-comment))))
    '(custom-variable-button ((t (:weight bold :underline t))))
    '(custom-variable-tag ((t (:inherit 'zenburn-primary-2))))

    ;; diary
    '(diary ((t (:underline nil :inherit 'zenburn-primary-1))))

    ;; dictionary
    '(dictionary-button ((t (:inherit fancy-widget-button))))
    '(dictionary-reference ((t (:inherit 'zenburn-primary-1))))
    '(dictionary-word-entry ((t (:inherit font-lock-keyword))))

    ;; diff
    '(diff-header-face ((t (:inherit 'zenburn-highlight-subtle))))
    '(diff-index-face ((t (:inherit bold))))
    '(diff-file-header-face ((t (:inherit bold))))
    '(diff-hunk-header-face ((t (:inherit 'zenburn-highlight-subtle))))
    '(diff-added-face ((t (:inherit 'zenburn-primary-3))))
    '(diff-removed-face ((t (:inherit 'zenburn-blue))))
    '(diff-context-face ((t (:inherit font-lock-comment))))
    '(diff-refine-change-face ((t (:inherit 'zenburn-background-2))))

    ;; emms
    `(emms-pbi-song ((t (:foreground ,zenburn-yellow))))
    '(emms-pbi-current ((t (:inherit 'zenburn-primary-1))))
    '(emms-pbi-mark-marked ((t (:inherit 'zenburn-primary-2))))

    ;; erc
    '(erc-action-face ((t (:inherit erc-default))))
    '(erc-bold-face ((t (:weight bold))))
    '(erc-current-nick-face ((t (:inherit 'zenburn-primary-1))))
    '(erc-dangerous-host-face ((t (:inherit font-lock-warning))))
    '(erc-direct-msg-face ((t (:inherit erc-default))))
    '(erc-error-face ((t (:inherit font-lock-warning))))
    '(erc-fool-face ((t (:inherit 'zenburn-lowlight-1))))
    '(erc-highlight-face ((t (:inherit hover-highlight))))
    '(erc-keyword-face ((t (:inherit 'zenburn-primary-1))))
    '(erc-my-nick-face ((t (:inherit 'zenburn-red))))
    '(erc-nick-default-face ((t (:inherit bold))))
    '(erc-nick-msg-face ((t (:inherit erc-default))))
    '(erc-notice-face ((t (:inherit 'zenburn-green))))
    '(erc-pal-face ((t (:inherit 'zenburn-primary-3))))
    '(erc-prompt-face ((t (:inherit 'zenburn-primary-2))))
    '(erc-timestamp-face ((t (:inherit 'zenburn-green+1))))
    '(erc-underline-face ((t (:inherit underline))))
    `(erc-default-face ((t (:foreground ,zenburn-fg))))
    `(erc-input-face ((t (:foreground ,zenburn-yellow))))


    ;; eshell
    '(eshell-prompt ((t (:inherit 'zenburn-primary-1))))
    `(eshell-ls-archive ((t (:foreground ,zenburn-red-1 :weight bold))))
    '(eshell-ls-backup ((t (:inherit font-lock-comment))))
    '(eshell-ls-clutter ((t (:inherit font-lock-comment))))
    `(eshell-ls-directory ((t (:foreground ,zenburn-blue+1 :weight bold))))
    `(eshell-ls-executable ((t (:foreground ,zenburn-red+1 :weight bold))))
    '(eshell-ls-unreadable ((t (:inherit 'zenburn-lowlight-1))))
    '(eshell-ls-missing ((t (:inherit font-lock-warning))))
    '(eshell-ls-product ((t (:inherit font-lock-doc))))
    '(eshell-ls-special ((t (:inherit 'zenburn-primary-1))))
    `(eshell-ls-symlink ((t (:foreground ,zenburn-cyan :weight bold))))

    ;; flyspell
    `(flyspell-duplicate ((t (:foreground ,zenburn-yellow :weight bold))))
    `(flyspell-incorrect ((t (:foreground ,zenburn-red :weight bold))))

    ;; font-latex
    '(font-latex-bold ((t (:inherit bold))))
    '(font-latex-warning ((t (:inherit font-lock-warning))))
    '(font-latex-sedate ((t (:inherit 'zenburn-primary-1))))
    '(font-latex-title-4 ((t (:inherit 'zenburn-title))))

    ;; font-locking
    '(font-lock-builtin-face ((t (:inherit 'zenburn-blue))))
    `(font-lock-comment-face ((t (:foreground ,zenburn-green :slant italic))))
    `(font-lock-comment-delimiter-face ((t (:foreground ,zenburn-green))))
    '(font-lock-constant-face ((t (:inherit 'zenburn-primary-4))))
    '(font-lock-doc-face ((t (:inherit 'zenburn-green+1))))
    `(font-lock-doc-string-face ((t (:foreground ,zenburn-blue+1))))
    `(font-lock-function-name-face ((t (:foreground ,zenburn-blue))))
    '(font-lock-keyword-face ((t (:inherit 'zenburn-primary-1))))
    '(font-lock-negation-char-face ((t (:inherit 'zenburn-primary-1))))
    '(font-lock-preprocessor-face ((t (:inherit 'zenburn-red))))
    '(font-lock-string-face ((t (:inherit 'zenburn-red))))
    '(font-lock-type-face ((t (:inherit 'zenburn-primary-3))))
    `(font-lock-variable-name-face ((t (:foreground ,zenburn-yellow))))
    '(font-lock-warning-face ((t (:inherit 'zenburn-highlight-alerting))))
    '(font-lock-pseudo-keyword-face ((t (:inherit 'zenburn-primary-2))))
    '(font-lock-operator-face ((t (:inherit 'zenburn-primary-3))))

    ;; gnus
    '(gnus-group-mail-1-face ((t (:bold t :inherit gnus-group-mail-1-empty))))
    '(gnus-group-mail-1-empty-face ((t (:inherit gnus-group-news-1-empty))))
    '(gnus-group-mail-2-face ((t (:bold t :inherit gnus-group-mail-2-empty))))
    '(gnus-group-mail-2-empty-face ((t (:inherit gnus-group-news-2-empty))))
    '(gnus-group-mail-3-face ((t (:bold t :inherit gnus-group-mail-3-empty))))
    '(gnus-group-mail-3-empty-face ((t (:inherit gnus-group-news-3-empty))))
    '(gnus-group-mail-4-face ((t (:bold t :inherit gnus-group-mail-4-empty))))
    '(gnus-group-mail-4-empty-face ((t (:inherit gnus-group-news-4-empty))))
    '(gnus-group-mail-5-face ((t (:bold t :inherit gnus-group-mail-5-empty))))
    '(gnus-group-mail-5-empty-face ((t (:inherit gnus-group-news-5-empty))))
    '(gnus-group-mail-6-face ((t (:bold t :inherit gnus-group-mail-6-empty))))
    '(gnus-group-mail-6-empty-face ((t (:inherit gnus-group-news-6-empty))))
    '(gnus-group-mail-low-face ((t (:bold t :inherit gnus-group-mail-low-empty))))
    '(gnus-group-mail-low-empty-face ((t (:inherit gnus-group-news-low-empty))))
    '(gnus-group-news-1-face ((t (:bold t :inherit gnus-group-news-1-empty))))
    '(gnus-group-news-2-face ((t (:bold t :inherit gnus-group-news-2-empty))))
    '(gnus-group-news-3-face ((t (:bold t :inherit gnus-group-news-3-empty))))
    '(gnus-group-news-4-face ((t (:bold t :inherit gnus-group-news-4-empty))))
    '(gnus-group-news-5-face ((t (:bold t :inherit gnus-group-news-5-empty))))
    '(gnus-group-news-6-face ((t (:bold t :inherit gnus-group-news-6-empty))))
    '(gnus-group-news-low-face ((t (:bold t :inherit gnus-group-news-low-empty))))
    '(gnus-header-content-face ((t (:inherit message-header-other))))
    '(gnus-header-from-face ((t (:inherit message-header-from))))
    '(gnus-header-name-face ((t (:inherit message-header-name))))
    '(gnus-header-newsgroups-face ((t (:inherit message-header-other))))
    '(gnus-header-subject-face ((t (:inherit message-header-subject))))
    '(gnus-summary-cancelled-face ((t (:inherit 'zenburn-highlight-alerting))))
    '(gnus-summary-high-ancient-face ((t (:inherit 'zenburn-blue))))
    '(gnus-summary-high-read-face ((t (:inherit 'zenburn-green :weight bold))))
    '(gnus-summary-high-ticked-face ((t (:inherit 'zenburn-primary-2))))
    '(gnus-summary-high-unread-face ((t (:inherit 'zenburn-foreground :weight bold))))
    '(gnus-summary-low-ancient-face ((t (:inherit 'zenburn-blue :weight normal))))
    '(gnus-summary-low-read-face ((t (:inherit 'zenburn-green :weight normal))))
    '(gnus-summary-low-ticked-face ((t (:inherit 'zenburn-primary-2))))
    '(gnus-summary-low-unread-face ((t (:inherit 'zenburn-foreground :weight normal))))
    '(gnus-summary-normal-ancient-face ((t (:inherit 'zenburn-blue :weight normal))))
    '(gnus-summary-normal-read-face ((t (:inherit 'zenburn-green :weight normal))))
    '(gnus-summary-normal-ticked-face ((t (:inherit 'zenburn-primary-2))))
    '(gnus-summary-normal-unread-face ((t (:inherit 'zenburn-foreground :weight normal))))
    '(gnus-summary-selected-face ((t (:inherit 'zenburn-primary-1))))
    `(gnus-cite-1-face ((t (:foreground ,zenburn-blue))))
    `(gnus-cite-10-face ((t (:foreground ,zenburn-yellow-1))))
    `(gnus-cite-11-face ((t (:foreground ,zenburn-yellow))))
    `(gnus-cite-2-face ((t (:foreground ,zenburn-blue-1))))
    `(gnus-cite-3-face ((t (:foreground ,zenburn-blue-2))))
    `(gnus-cite-4-face ((t (:foreground ,zenburn-green+2))))
    `(gnus-cite-5-face ((t (:foreground ,zenburn-green+1))))
    `(gnus-cite-6-face ((t (:foreground ,zenburn-green))))
    `(gnus-cite-7-face ((t (:foreground ,zenburn-red))))
    `(gnus-cite-8-face ((t (:foreground ,zenburn-red-1))))
    `(gnus-cite-9-face ((t (:foreground ,zenburn-red-2))))
    `(gnus-group-news-1-empty-face ((t (:foreground ,zenburn-yellow))))
    `(gnus-group-news-2-empty-face ((t (:foreground ,zenburn-green+3))))
    `(gnus-group-news-3-empty-face ((t (:foreground ,zenburn-green+1))))
    `(gnus-group-news-4-empty-face ((t (:foreground ,zenburn-blue-2))))
    `(gnus-group-news-5-empty-face ((t (:foreground ,zenburn-blue-3))))
    `(gnus-group-news-6-empty-face ((t (:inherit 'zenburn-lowlight-1))))
    `(gnus-group-news-low-empty-face ((t (:inherit 'zenburn-lowlight-1))))
    `(gnus-signature-face ((t (:foreground ,zenburn-yellow))))
    `(gnus-x-face ((t (:background ,zenburn-fg :foreground ,zenburn-bg))))

    ;; help-argument
    '(help-argument-name ((t (:weight bold))))

    ;; hi-lock-mode
    `(hi-yellow  ((t (:foreground ,zenburn-yellow))))
    `(hi-pink  ((t (:foreground ,zenburn-red-4))))
    `(hi-green  ((t (:foreground ,zenburn-green-1))))
    `(hi-blue  ((t (:foreground ,zenburn-blue-5))))


    ;; highlight
    '(highlight-current-line ((t (:inherit 'zenburn-highlight-subtle))))

    ;; hightlight the current line
    `(hl-line ((t (:inherit nil :background ,zenburn-bg-1))))

    ;; holiday
    '(holiday ((t (:underline t :inherit 'zenburn-primary-4))))

    ;; ibuffer
    '(ibuffer-deletion ((t (:inherit 'zenburn-primary-2))))
    '(ibuffer-marked ((t (:inherit 'zenburn-primary-1))))
    '(ibuffer-special-buffer ((t (:inherit font-lock-doc))))
    '(ibuffer-help-buffer ((t (:inherit font-lock-comment))))

    ;; icomplete
    `(icompletep-choices ((t (:foreground ,zenburn-fg))))
    `(icompletep-determined ((t (:foreground ,zenburn-green+1))))
    `(icompletep-nb-candidates ((t (:foreground ,zenburn-green+3))))
    `(icompletep-keys ((t (:foreground ,zenburn-red))))

    ;; ido
    '(ido-first-match ((t (:inherit 'zenburn-primary-1))))
    '(ido-only-match ((t (:inherit 'zenburn-primary-2))))
    `(ido-subdir ((t (:foreground ,zenburn-yellow))))

    ;; imaxima
    '(imaxima-latex-error ((t (:inherit font-lock-warning))))

    ;; info
    `(info-xref ((t (:foreground ,zenburn-yellow :weight bold))))
    '(info-xref-visited ((t (:inherit info-xref :weight normal))))
    '(info-header-xref ((t (:inherit info-xref))))
    `(info-menu-star ((t (:foreground ,zenburn-orange :weight bold))))
    `(info-menu-5 ((t (:inherit info-menu-star))))
    '(info-node ((t (:weight bold))))
    '(info-header-node ((t (:weight normal))))

    ;; isearch
    `(isearch ((t (:foreground ,zenburn-yellow :background ,zenburn-bg-1))))
    `(isearch-fail ((t (:foreground ,zenburn-fg :background ,zenburn-red-4))))
    `(lazy-highlight ((t (:foreground ,zenburn-yellow :background ,zenburn-bg+2))))

    ;; jabber-mode
    '(jabber-roster-user-chatty ((t (:inherit 'zenburn-primary-1))))
    '(jabber-roster-user-online ((t (:inherit 'zenburn-primary-2))))
    '(jabber-roster-user-away ((t (:inherit font-lock-doc))))
    '(jabber-roster-user-xa ((t (:inherit font-lock-comment))))
    '(jabber-roster-user-offline ((t (:inherit 'zenburn-lowlight-1))))
    '(jabber-roster-user-dnd ((t (:inherit 'zenburn-primary-5))))
    '(jabber-roster-user-error ((t (:inherit font-lock-warning))))
    '(jabber-title-small ((t (:inherit 'zenburn-title :height 1.2))))
    '(jabber-title-medium ((t (:inherit jabber-title-small :height 1.2))))
    '(jabber-title-large ((t (:inherit jabber-title-medium :height 1.2))))
    '(jabber-chat-prompt-local ((t (:inherit 'zenburn-primary-1))))
    '(jabber-chat-prompt-foreign ((t (:inherit 'zenburn-primary-2))))
    '(jabber-rare-time-face ((t (:inherit 'zenburn-green+1))))

    ;; jde
    '(jde-java-font-lock-modifier-face ((t (:inherit 'zenburn-primary-2))))
    '(jde-java-font-lock-doc-tag-face ((t (:inherit 'zenburn-primary-1))))
    '(jde-java-font-lock-constant-face ((t (:inherit font-lock-constant))))
    '(jde-java-font-lock-package-face ((t (:inherit 'zenburn-primary-3))))
    '(jde-java-font-lock-number-face ((t (:inherit font-lock-constant))))
    '(jde-java-font-lock-operator-face ((t (:inherit font-lock-keyword))))
    '(jde-java-font-lock-link-face ((t (:inherit 'zenburn-primary-5 :underline t))))

    ;; keywiz
    '(keywiz-right-face ((t (:inherit 'zenburn-primary-1))))
    '(keywiz-wrong-face ((t (:inherit font-lock-warning))))
    '(keywiz-command-face ((t (:inherit 'zenburn-primary-2))))

    ;; magit
    '(magit-section-title ((t (:inherit 'zenburn-red))))
    '(magit-item-highlight ((t (:inherit 'zenburn-blue))))
    '(magit-branch ((t (:inherit 'zenburn-blue))))

    ;; makefile
    '(makefile-space ((t (:inherit font-lock-warning))))
    '(makefile-shell ((t (nil))))

    ;; message
    '(message-cited-text-face ((t (:inherit font-lock-comment))))
    '(message-header-name-face ((t (:inherit 'zenburn-green+1))))
    '(message-header-other-face ((t (:inherit 'zenburn-green))))
    '(message-header-to-face ((t (:inherit 'zenburn-primary-1))))
    '(message-header-from-face ((t (:inherit 'zenburn-primary-1))))
    '(message-header-cc-face ((t (:inherit 'zenburn-primary-1))))
    '(message-header-newsgroups-face ((t (:inherit 'zenburn-primary-1))))
    '(message-header-subject-face ((t (:inherit 'zenburn-primary-2))))
    '(message-header-xheader-face ((t (:inherit 'zenburn-green))))
    '(message-mml-face ((t (:inherit 'zenburn-primary-1))))
    '(message-separator-face ((t (:inherit font-lock-comment))))

    ;; minimap
    '(minimap-active-region-background ((t (:foreground nil :background "#233323"))))

    ;; org-mode
    `(org-agenda-clocking
       ((t (:background ,zenburn-green-4 :weight bold))) t)
    `(org-agenda-date-today
       ((t (:foreground ,zenburn-cyan :slant italic :weight bold))) t)
    `(org-agenda-date
       ((t (:foreground ,zenburn-blue))) t)
    `(org-agenda-date-weekend
       ((t (:foreground ,zenburn-blue+1))) t)

    '(org-agenda-structure
       ((t (:inherit font-lock-comment))))
    `(org-archived ((t (:foreground ,zenburn-fg :weight bold))))
    `(org-checkbox ((t (:background ,zenburn-bg+2 :foreground "white"
			      :box (:line-width 1 :style released-button)))))
    `(org-date ((t (:foreground ,zenburn-blue :underline t))))
    `(org-deadline-announce ((t (:foreground ,zenburn-red-1))))
    `(org-done ((t (:bold t :weight bold :foreground ,zenburn-green+3))))
    `(org-formula ((t (:foreground ,zenburn-yellow-2))))
    `(org-headline-done ((t (:foreground ,zenburn-green+3))))
    `(org-hide ((t (:foreground ,zenburn-bg-1))))
    `(org-level-1 ((t (:foreground ,zenburn-orange))))
    `(org-level-2 ((t (:foreground ,zenburn-yellow))))
    `(org-level-3 ((t (:foreground ,zenburn-blue))))
    `(org-level-4 ((t (:foreground ,zenburn-cyan))))
    `(org-level-5 ((t (:foreground ,zenburn-blue-1))))
    `(org-level-6 ((t (:foreground ,zenburn-blue-2))))
    `(org-level-7 ((t (:foreground ,zenburn-blue-3))))
    `(org-level-8 ((t (:foreground ,zenburn-blue-4))))
    `(org-link ((t (:foreground ,zenburn-yellow-2 :underline t))))
    `(org-scheduled ((t (:foreground ,zenburn-green+4))))
    `(org-scheduled-previously ((t (:foreground ,zenburn-red-4))))
    `(org-scheduled-today ((t (:foreground ,zenburn-blue+1))))
    `(org-special-keyword ((t (:foreground ,zenburn-yellow-1))))
    `(org-table ((t (:foreground ,zenburn-green+2))))
    `(org-tag ((t (:bold t :weight bold))))
    `(org-time-grid ((t (:foreground ,zenburn-orange))))
    `(org-todo ((t (:bold t :foreground ,zenburn-red :weight bold))))
    '(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
    `(org-warning ((t (:bold t :foreground ,zenburn-red :weight bold))))

    ;; outline
    '(outline-8 ((t (:inherit default))))
    '(outline-7 ((t (:inherit outline-8 :height 1.0))))
    '(outline-6 ((t (:inherit outline-7 :height 1.0))))
    '(outline-5 ((t (:inherit outline-6 :height 1.0))))
    '(outline-4 ((t (:inherit outline-5 :height 1.0))))
    '(outline-3 ((t (:inherit outline-4 :height 1.0))))
    '(outline-2 ((t (:inherit outline-3 :height 1.0))))
    '(outline-1 ((t (:inherit outline-2  :height 1.0))))


    ;; rainbow-delimiters
    `(rainbow-delimiters-depth-1-face ((t (:foreground ,zenburn-cyan))))
    `(rainbow-delimiters-depth-2-face ((t (:foreground ,zenburn-yellow))))
    `(rainbow-delimiters-depth-3-face ((t (:foreground ,zenburn-blue+1))))
    `(rainbow-delimiters-depth-4-face ((t (:foreground ,zenburn-red+1))))
    `(rainbow-delimiters-depth-5-face ((t (:foreground ,zenburn-green+1))))
    `(rainbow-delimiters-depth-6-face ((t (:foreground ,zenburn-blue-1))))
    `(rainbow-delimiters-depth-7-face ((t (:foreground ,zenburn-orange))))
    `(rainbow-delimiters-depth-8-face ((t (:foreground ,zenburn-magenta))))
    `(rainbow-delimiters-depth-9-face ((t (:foreground ,zenburn-yellow-2))))
    `(rainbow-delimiters-depth-10-face ((t (:foreground ,zenburn-green+2))))
    `(rainbow-delimiters-depth-11-face ((t (:foreground ,zenburn-blue+1))))
    `(rainbow-delimiters-depth-12-face ((t (:foreground ,zenburn-red-4))))


    ;; rcirc
    '(rcirc-my-nick ((t (:inherit 'zenburn-primary-1))))
    '(rcirc-other-nick ((t (:inherit bold))))
    '(rcirc-bright-nick ((t (:foreground "white" :inherit rcirc-other-nick))))
    '(rcirc-dim-nick ((t (:inherit font-lock-comment))))
    '(rcirc-nick-in-message ((t (:inherit bold))))
    '(rcirc-server ((t (:inherit font-lock-comment))))
    '(rcirc-server-prefix ((t (:inherit font-lock-comment-delimiter))))
    '(rcirc-timestamp ((t (:inherit font-lock-comment))))
    '(rcirc-prompt ((t (:inherit 'zenburn-primary-1))))
    '(rcirc-mode-line-nick ((t (:inherit 'zenburn-primary-1))))

    ;; show-paren
    '(show-paren-mismatch ((t (:inherit font-lock-warning :weight bold))))
    `(show-paren-match ((t (:background ,zenburn-blue-5 :underline nil))))

    ;; setnu
    '(setnu-line-number ((t (:inherit 'zenburn-lowlight-2))))

    ;; speedbar
    '(speedbar-button-face ((t (:inherit 'zenburn-primary-1))))
    '(speedbar-file-face ((t (:inherit 'zenburn-primary-2))))
    '(speedbar-directory-face ((t (:inherit 'zenburn-primary-5))))
    '(speedbar-tag-face ((t (:inherit font-lock-function-name))))
    '(speedbar-highlight-face ((t (:underline t))))

    ;; strokes
    '(strokes-char-face ((t (:inherit font-lock-keyword))))

    ;; todoo
    '(todoo-item-header-face ((t (:inherit 'zenburn-primary-1))))
    '(todoo-item-assigned-header-face ((t (:inherit 'zenburn-primary-2))))
    `(todoo-sub-item-header-face ((t (:foreground ,zenburn-yellow))))


    ;; tuareg
    '(tuareg-font-lock-governing-face ((t (:inherit 'zenburn-primary-2))))
    '(tuareg-font-lock-interactive-error-face ((t (:inherit font-lock-warning))))
    '(tuareg-font-lock-interactive-output-face ((t (:inherit 'zenburn-primary-3))))
    '(tuareg-font-lock-operator-face ((t (:inherit font-lock-operator))))

    ;; twittering-mode
    '(twittering-username-face ((t (:inherit 'zenburn-red-2))))
    '(twittering-uri-face ((t (:inherit 'zenburn-blue :underline t))))

    ;; w3m
    '(w3m-form-button-face ((t (:inherit widget-button))))
    '(w3m-form-button-pressed-face ((t (:inherit widget-button-pressed))))
    '(w3m-form-button-mouse-face ((t (:inherit widget-button-pressed))))
    '(w3m-tab-unselected-face ((t (:box (:line-width 1 :style released-button)))))
    '(w3m-tab-selected-face ((t (:box (:line-width 1 :style pressed-button)))))
    '(w3m-tab-unselected-retrieving-face
       ((t (:inherit w3m-tab-unselected widget-inactive))))
    '(w3m-tab-selected-retrieving-face
       ((t (:inherit w3m-tab-selected widget-inactive))))
    '(w3m-tab-background-face ((t (:inherit 'zenburn-highlight-subtle))))
    '(w3m-anchor-face ((t (:inherit 'zenburn-primary-1))))
    '(w3m-arrived-anchor-face ((t (:inherit 'zenburn-primary-2))))
    '(w3m-image-face ((t (:inherit 'zenburn-primary-3))))
    '(w3m-form-face ((t (:inherit widget-field))))

    ;; which
    '(which-func ((t (:inherit mode-line))))

    ;; wl (wanderlust)
    ;; some faces end with -face, while other don't; confusing
    '(wl-highlight-folder-few-face ((t (:inherit 'zenburn-red-2))))
    '(wl-highlight-folder-many-face ((t (:inherit 'zenburn-red-1))))
    '(wl-highlight-folder-path-face ((t (:inherit 'zenburn-orange))))
    '(wl-highlight-folder-unread-face ((t (:inherit 'zenburn-blue))))
    '(wl-highlight-folder-zero-face ((t (:inherit 'zenburn-fg))))
    '(wl-highlight-folder-unknown-face ((t (:inherit 'zenburn-blue))))
    '(wl-highlight-message-citation-header ((t (:inherit 'zenburn-red-1))))
    '(wl-highlight-message-cited-text-1 ((t (:inherit 'zenburn-red))))
    '(wl-highlight-message-cited-text-2 ((t (:inherit 'zenburn-green+2))))
    '(wl-highlight-message-cited-text-3 ((t (:inherit 'zenburn-blue))))
    '(wl-highlight-message-cited-text-4 ((t (:inherit 'zenburn-blue+))))
    '(wl-highlight-message-header-contents-face ((t (:inherit 'zenburn-green))))
    '(wl-highlight-message-headers-face ((t (:inherit 'zenburn-red+1))))
    '(wl-highlight-message-important-header-contents ((t (:inherit 'zenburn-green+2))))
    '(wl-highlight-message-header-contents ((t (:inherit 'zenburn-green+1))))
    '(wl-highlight-message-important-header-contents2 ((t (:inherit 'zenburn-green+2))))
    '(wl-highlight-message-signature ((t (:inherit 'zenburn-green))))
    '(wl-highlight-message-unimportant-header-contents ((t (:inherit 'zenburn-lowlight-2))))
    '(wl-highlight-summary-answered-face ((t (:inherit 'zenburn-blue))))
    '(wl-highlight-summary-disposed-face ((t (:inherit 'zenburn-lowlight-2
					       :slant italic))))
    '(wl-highlight-summary-new-face ((t (:inherit 'zenburn-blue))))
    '(wl-highlight-summary-normal-face ((t (:inherit 'zenburn-fg))))
    `(wl-highlight-summary-thread-top-face ((t (:foreground ,zenburn-yellow))))
    `(wl-highlight-thread-indent-face ((t (:foreground ,zenburn-magenta))))
    '(wl-highlight-summary-refiled-face ((t (:inherit 'zenburn-lowlight-2))))
    '(wl-highlight-summary-displaying-face ((t (:underline t :weight bold))))
    ))

(provide-theme 'zenburn)

;; Local Variables:
;; no-byte-compile: t
;; End:
