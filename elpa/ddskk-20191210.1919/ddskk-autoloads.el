;;; ddskk-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "context-skk" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/context-skk.el"
;;;;;;  "a222176b300a6da6fb5a9dae337eab07")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/context-skk.el

(let ((loads (get 'context-skk 'custom-loads))) (if (member '"context-skk" loads) nil (put 'context-skk 'custom-loads (cons '"context-skk" loads))))

(defvar context-skk-context-check-hook '(context-skk-out-of-string-or-comment-in-programming-mode-p context-skk-on-keymap-defined-area-p context-skk-in-read-only-p) "\
*日本語入力を自動的に off にしたい「コンテキスト」にいれば t を返す
関数を登録する。")

(custom-autoload 'context-skk-context-check-hook "context-skk" t)

(defvar context-skk-customize-functions '(context-skk-customize-kutouten) "\
*skk による入力開始直前に、入力をカスタマイズする関数を登録する。
関数は以下の形式のデータを要素とするリストを返すものとする: 

  (VARIABLE VALUE)

`skk-insert' を囲む `let' によって VARIABLE は VALUE に束縛される。
特にその場でカスタマイズすべき変数がない場合 `nil' を返せば良い。
関数には何も引数が渡されない。")

(custom-autoload 'context-skk-customize-functions "context-skk" t)

(defvar context-skk-programming-mode '(ada-mode antlr-mode asm-mode autoconf-mode awk-mode c-mode objc-mode java-mode idl-mode pike-mode cperl-mode delphi-mode f90-mode fortran-mode icon-mode idlwave-mode inferior-lisp-mode lisp-mode m4-mode makefile-mode metafont-mode modula-2-mode octave-mode pascal-mode perl-mode prolog-mode ps-mode postscript-mode ruby-mode scheme-mode sh-mode simula-mode tcl-mode vhdl-mode emacs-lisp-mode) "\
*context-skk にて「プログラミングモード」と見做すモードのリスト")

(custom-autoload 'context-skk-programming-mode "context-skk" t)

(defvar context-skk-mode-hook nil "\
*`context-skk-mode' を切り替える際に呼ばれるフック。")

(custom-autoload 'context-skk-mode-hook "context-skk" t)

(defvar context-skk-mode-on-hook nil "\
*`context-skk-mode' が on になる際に呼ばれるフック。")

(custom-autoload 'context-skk-mode-on-hook "context-skk" t)

(defvar context-skk-mode-off-hook nil "\
*`context-skk-mode' が off になる際に呼ばれるフック。")

(custom-autoload 'context-skk-mode-off-hook "context-skk" t)

(defvar context-skk-mode-off-message "[context-skk] 日本語入力 off" "\
*`context-skk-mode' が off になったときにエコーエリアに表示するメッセージ。")

(custom-autoload 'context-skk-mode-off-message "context-skk" t)
 (autoload 'context-skk-mode "context-skk" "文脈に応じて自動的にskkの入力モードをlatinに切り換えるマイナーモード。" t)

;;;### (autoloads "actual autoloads are elsewhere" "context-skk"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/context-skk.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/context-skk.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "context-skk" '("context-skk-" "define-context-skk-advice")))

;;;***

;;;***

;;;### (autoloads nil "skk" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk.el"
;;;;;;  "8f438845bb8b21a2515b1b457691f156")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk.el

(autoload 'skk-mode "skk" "\
日本語入力モード。
マイナーモードの一種で、オリジナルのモードには影響を与えない。
負の引数を与えると SKK モードから抜ける。

An input mode for Japanese, converting romanized phonetic strings to kanji.

A minor mode, it should not affect the use of any major mode or
orthogonal minor modes.

In the initial SKK mode, hiragana submode, the mode line indicator is
\"かな\".  Lowercase romaji inputs are automatically converted to
hiragana where possible.  The lowercase characters `q' and `l' change
submodes of SKK, and `x' is used as a prefix indicating a small kana.

`q' is used to toggle between hiragana and katakana (mode line
indicator \"カナ\") input submodes.

`l' is used to enter ASCII submode (mode line indicator \"SKK\").
Uppercase `L' enters JISX0208 latin (wide ASCII) submode (mode line
indicator \"全英\").  `
' returns to hiragana submode from either
ASCII submode.

Kanji conversion is complex, but the basic principle is that the user
signals the appropriate stem to be matched against dictionary keys by
the use of uppercase letters.  Because SKK does not use grammatical
information, both the beginning and the end of the stem must be marked.

For non-inflected words (eg, nouns) consisting entirely of kanji, the
simplest way to invoke conversion is to enter the reading of the kanji,
the first character only in uppercase.  A leading \"▽\" indicates that
kanji conversion is in progress.  After entering the reading, press
space.  This invokes dictionary lookup, and the hiragana reading will be
redisplayed in kanji as the first candidate.  Pressing space again gives
the next candidate.  Further presses of space produce further candidates,
as well as a list of the next few candidates in the minibuffer.  Eg,
\"Benri\" => \"▽べんり\", and pressing space produces \"▼便利\" (the
solid triangle indicates that conversion is in progress).  Backspace
steps through the candidate list in reverse.

A candidate can be accepted by pressing `
', or by entering a
self-inserting character.  (Unlike other common Japanese input methods,
RET not only accepts the current candidate, but also inserts a line
break.)

Inflected words (verbs and adjectives), like non-inflected words, begin
input with a capital letter.  However, for these words the end of the
kanji string is signaled by capitalizing the next mora.  Eg, \"TuyoI\"
=> \"▼強い\".  If no candidate is available at that point, the inflection
point will be indicated with an asterisk \"*\", and trailing characters
will be displayed until a candidate is recognized.  It will be
immediately displayed (pressing space is not necessary).  Space and
backspace are used to step forward and backward through the list of
candidates.

For more information, see the `skk' topic in Info.  (Japanese only.)

A tutorial is available in Japanese or English via \\[skk-tutorial].
Use a prefix argument to choose the language.  The default is system-
dependent.

\(fn &optional ARG)" t nil)

(autoload 'skk-auto-fill-mode "skk" "\
日本語入力モード。自動折り返し機能付き。
マイナーモードの一種で、オリジナルのモードには影響を与えない。
正の引数を与えると、強制的に `auto-fill-mode' 及び SKK モードに入る。
負の引数を与えると `auto-fill-mode' 及び SKK モードから抜ける。

\(fn &optional ARG)" t nil)

(autoload 'skk-compile-rule-list "skk" "\
rule list を木の形にコンパイルする。

\(fn &rest RULE-LISTS)" nil nil)

(autoload 'skk-henkan-on-message "skk" nil nil nil)

(autoload 'skk-remove-duplicates "skk" "\
LIST から、重複する要素を除外したリストを返す。

\(fn LIST)" nil nil)

(autoload 'skk-preload "skk" "\
Emacs 起動時にあらかじめ SKK を呼ぶことで SKK の応答を速くする。
先読みの対象になるのは以下。
1. skk.el と関連するいくつかのファイル (初回起動時の遅延を緩和)
2. 共有辞書群 (初変換時の遅延を緩和)
変数 `skk-preload' が non-nil のとき `after-init-hook' から呼ばれる。
そのため Emacs の起動時間が長くなる点には注意を要する。" nil nil)

(add-hook 'after-init-hook (lambda nil (when (and (symbol-value 'init-file-user) skk-preload) (skk-preload) (message "SKK preload...done")) (when (and (not (featurep 'xemacs)) window-system) (ccc-setup))) t)

;;;### (autoloads "actual autoloads are elsewhere" "skk" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-abbrev" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-abbrev.el"
;;;;;;  "11ff5adf1b1ed94d8ac5542e1899c637")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-abbrev.el

(autoload 'skk-abbrev-search "skk-abbrev" nil nil nil)

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "skk-act" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-act.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-act.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-act" '("skk-act-")))

;;;***

;;;### (autoloads nil "skk-annotation" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-annotation.el"
;;;;;;  "2e45e439ea586068de37cd05ca7b0b2c")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-annotation.el

(autoload 'skk-annotation-get "skk-annotation" "\


\(fn ANNOTATION)" nil nil)

(autoload 'skk-annotation-find-and-show "skk-annotation" "\
各種リソースからアノテーションを取得し表示する。

\(fn PAIR)" nil nil)

(autoload 'skk-annotation-show "skk-annotation" "\


\(fn ANNOTATION &optional WORD SOURCES)" nil nil)

(autoload 'skk-annotation-display-p "skk-annotation" "\


\(fn TEST)" nil nil)

(autoload 'skk-annotation-toggle-display-p "skk-annotation" nil t nil)

(autoload 'skk-annotation-add "skk-annotation" "\
最後に確定した語に annotation を付ける。
既に annotation が付けられていれば、それを編集バッファに出力する。
NO-PREVIOUS-ANNOTATION を指定 (\\[Universal-Argument] \\[skk-annotation-add])
すると、既に付けられている annotation を編集バッファに出力しない。

\(fn &optional NO-PREVIOUS-ANNOTATION)" t nil)

(autoload 'skk-annotation-remove "skk-annotation" "\
最後に確定した語から annotation を取り去る。" t nil)

(autoload 'skk-annotation-quote "skk-annotation" "\
最後に確定した語に含まれる `;' を候補の一部として quote する。

\(fn &optional QUIET)" t nil)

(autoload 'skk-annotation-message "skk-annotation" "\


\(fn &optional SITUATION)" nil nil)

(autoload 'skk-annotation-lookup-region-or-at-point "skk-annotation" "\
選択領域またはポイント位置の単語を辞書で調べる。
辞書としては lookup.el、Apple OS X の辞書サービス、Wikipedia/Wikitionary などが
利用される。

領域が選択されていなければ単語の始めと終わりを推測して調べる。

調べた結果を `skk-annotation-show-as-message' が Non-nil であればエコーエリア
に、nil であれば別 window に表示する。

\(fn &optional PREFIX-ARG START END)" t nil)

(autoload 'skk-annotation-start-python "skk-annotation" "\
OS X の「辞書」を利用するために python を起動する。

\(fn &optional WAIT)" nil nil)

(autoload 'skk-annotation-lookup-DictionaryServices "skk-annotation" "\
python を介して DictionaryServices を利用しアノテーションを取得する。
オプション引数 TRUNCATE が non-nil の場合は候補一覧用に短いアノテーション
に絞りこむ。

\(fn WORD &optional TRUNCATE FORCE)" nil nil)

(autoload 'skk-annotation-preread-dict "skk-annotation" "\
dict のプロセスを起動する。先読みのために用いる。

\(fn WORD &optional NOWAIT)" nil nil)

(autoload 'skk-annotation-lookup-dict "skk-annotation" "\
dict のプロセスを必要なら起動し、結果を調べる。
意味が取得できた場合には結果を文字列として返す。

\(fn WORD &optional TRUNCATE)" nil nil)

(autoload 'skk-annotation-wikipedia "skk-annotation" "\
Wiktionary/Wikipedia の WORD に相当する記事からアノテーションを取得する。

\(fn WORD &optional SOURCES)" nil nil)

(defalias 'skk-annotation-wikipedia-region-or-at-point 'skk-annotation-lookup-region-or-at-point)

(autoload 'skkannot-cache "skk-annotation" "\


\(fn WORD &optional SOURCES)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-annotation"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-annotation.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-annotation.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-annotation" '("skk")))

;;;***

;;;***

;;;### (autoloads nil "skk-auto" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-auto.el"
;;;;;;  "4effd2a900651a86a719101adb78a821")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-auto.el

(autoload 'skk-okuri-search-1 "skk-auto" nil nil nil)

(autoload 'skk-adjust-search-prog-list-for-auto-okuri "skk-auto" nil nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-auto" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-auto.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-auto.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-auto" '("skk-okuri-search-subr-original")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "skk-azik" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-azik.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-azik.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-azik" '("skk-azik-")))

;;;***

;;;### (autoloads nil "skk-cdb" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cdb.el"
;;;;;;  "0eaf677f2e2c6cb6020bada125650a90")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cdb.el

(autoload 'skk-search-cdb-jisyo "skk-cdb" "\


\(fn CDB-PATH)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-cdb" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cdb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-cdb" '("skk-cdb-")))

;;;***

;;;***

;;;### (autoloads nil "skk-comp" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-comp.el"
;;;;;;  "6411b1f7acccdc0d608dda4317955bf0")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-comp.el

(autoload 'skk-comp-start-henkan "skk-comp" "\
▽モードで読みを補完した後、変換する。
それ以外のモードではオリジナルのキーマップに割り付けられたコマンドをエミュレー
トする。

\(fn ARG)" t nil)

(autoload 'skk-comp "skk-comp" "\


\(fn FIRST &optional SILENT)" nil nil)

(autoload 'skk-comp-do "skk-comp" "\


\(fn FIRST &optional SILENT SET-THIS-COMMAND)" nil nil)

(autoload 'skk-comp-get-candidate "skk-comp" "\


\(fn &optional FIRST)" nil nil)

(autoload 'skk-comp-get-all-candidates "skk-comp" "\


\(fn KEY PREFIX PROG-LIST)" nil nil)

(autoload 'skk-comp-get-regexp "skk-comp" "\


\(fn PREFIX)" nil nil)

(autoload 'skk-comp-collect-kana "skk-comp" "\


\(fn TREE)" nil nil)

(autoload 'skk-comp-arrange-kana-list "skk-comp" "\


\(fn KANA-LIST PREFIX)" nil nil)

(autoload 'skk-comp-from-jisyo "skk-comp" "\
SKK 辞書フォーマットの FILE から補完候補を得る。

\(fn FILE)" nil nil)

(autoload 'skk-comp-search-current-buffer "skk-comp" "\


\(fn KEY &optional ABBREV)" nil nil)

(autoload 'skk-comp-re-search-current-buffer "skk-comp" "\


\(fn KEY PREFIX &optional ABBREV)" nil nil)

(autoload 'skk-comp-previous "skk-comp" "\


\(fn &optional SET-THIS-COMMAND)" nil nil)

(autoload 'skk-comp-previous/next "skk-comp" "\


\(fn CH)" nil nil)

(autoload 'skk-try-completion "skk-comp" "\
▽モードで見出し語を補完する。
それ以外のモードでは、オリジナルのキー割り付けのコマンドをエミュレートする。

\(fn ARG)" t nil)

(autoload 'skk-comp-wrapper "skk-comp" "\
Character でないキーに補完を割り当てるためのコマンド。

\(fn &optional ARG)" t nil)

(autoload 'skk-previous-comp-maybe "skk-comp" "\
Character でないキーに補完前候補を割り当てるためのコマンド。
▽モードでは補完前候補、さもなければオリジナルのキー定義を実行する。

\(fn &optional ARG)" t nil)

(autoload 'skk-comp-by-history "skk-comp" "\
入力が空の時に履歴から補完する。
対象は現在の Emacs のセッションにおいて行った送り無し変換のうち、
`skk-kakutei-history-limit' で指定される最近のものである。" nil nil)

(autoload 'skk-comp-smart-find "skk-comp" "\
`smart-find' が見つけたファイル名で補完する

\(fn &optional PATH)" nil nil)

(autoload 'skk-search-smart-find "skk-comp" "\
`smart-find'を利用した変換を行う。
SKK abbrev モードにて、英文字 + `skk-completion-search-char' (~)で
未完スペルを指定して変換すると、補完候補が変換候補として出現する。
デフォルトでは SKK abbrev モードのみで有効な機能だが、
NOT-ABBREV-ONLY を指定する事で常に有効となる。

\(fn &optional PATH NOT-ABBREV-ONLY WITHOUT-CHAR-MAYBE)" nil nil)

(autoload 'skk-smart-find "skk-comp" "\


\(fn KEY &optional PATH)" nil nil)

(autoload 'skk-comp-lisp-symbol "skk-comp" "\
Lisp symbol 名で補完する。
PREDICATE に引数 1 個の関数を指定すれば、PREDICATE を満たすシンボル
に限って補完する。PREDICATE には `fboundp', `boundp', `commandp'
などが指定できる。指定しなければ関数または変数に限って補完する。

`skk-completion-prog-list' へ追加すると有効となる。
\(add-to-list 'skk-completion-prog-list
	     '(skk-comp-lisp-symbol) t)

\(fn &optional PREDICATE)" nil nil)

(autoload 'skk-search-lisp-symbol "skk-comp" "\
Lisp symbol 名で補完した結果を検索結果として返す。
PREDICATE に引数 1 個の関数を指定すれば、PREDICATE を満たすシンボル
に限って補完する。PREDICATE には `fboundp', `boundp', `commandp'
などが指定できる。指定しなければ関数または変数に限って補完する。
SKK abbrev モードにて、英文字 + `skk-completion-search-char' (~)で
未完スペルを指定して変換すると、補完候補が変換候補として出現する。
デフォルトでは SKK abbrev モードのみで有効な機能だが、
NOT-ABBREV-ONLY を指定する事で常に有効となる。


設定例
\(add-to-list 'skk-search-prog-list
	     '(skk-search-lisp-symbol) t)

\(fn &optional PREDICATE NOT-ABBREV-ONLY WITHOUT-CHAR-MAYBE)" nil nil)

(autoload 'skk-completion-search "skk-comp" "\
変換キーで補完を行い、得られた各見出しでさらに検索する。
COMP-PROG-LIST は `skk-completion-prog-list' と同じ形式で、
これに含まれる補完関数によって、まず変換キーから見出しのリストを得る。
SEARCH-PROG-LIST は `skk-search-prog-list' と同じ形式で、
補完関数によって得た見出しをこれに含まれる検索関数により変換候補を得る。
デフォルトでは、補完によって得られた見出しと対応する候補はセットであるが、
WITHOUT-MIDASI を指定すると見出しは省かれる。

\(fn COMP-PROG-LIST &optional SEARCH-PROG-LIST WITHOUT-MIDASI WITHOUT-CHAR-MAYBE)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-comp" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-comp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-comp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-comp" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-cursor" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cursor.el"
;;;;;;  "c8fe6d1f4e3430896bcbedd20b40a9b7")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cursor.el

(autoload 'skk-cursor-current-color "skk-cursor" nil nil nil)

(autoload 'skk-cursor-set-1 "skk-cursor" "\


\(fn COLOR)" nil nil)

(autoload 'skk-cursor-off-1 "skk-cursor" nil nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-cursor" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cursor.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cursor.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-cursor" '("skk-cursor-default-color")))

;;;***

;;;***

;;;### (autoloads nil "skk-cus" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cus.el"
;;;;;;  "7294fbea9e682d512fc183043cceb422")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cus.el

(autoload 'skk-customize-group-skk "skk-cus" nil t nil)

(autoload 'skk-customize "skk-cus" nil t nil)

(autoload 'skk-cus-setup "skk-cus" nil nil nil)

(autoload 'skk-cus-set "skk-cus" "\


\(fn &optional ALIST)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-cus" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cus.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cus.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-cus" '("skk-cus")))

;;;***

;;;***

;;;### (autoloads nil "skk-dcomp" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-dcomp.el"
;;;;;;  "3126ae32ad1b93fa165a4395c54f9e0b")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-dcomp.el

(autoload 'skk-dcomp-marked-p "skk-dcomp" nil nil nil)

(autoload 'skk-dcomp-before-kakutei "skk-dcomp" nil nil nil)

(autoload 'skk-dcomp-after-delete-backward-char "skk-dcomp" nil nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-dcomp" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-dcomp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-dcomp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-dcomp" '("skk-dcomp-")))

;;;***

;;;***

;;;### (autoloads nil "skk-develop" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-develop.el"
;;;;;;  "4d61f923b7ed03342307cfd80a239f69")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-develop.el

(autoload 'skk-submit-bug-report "skk-develop" "\
SKK のバグレポートを書くメールバッファを用意する。
mail-user-agent を設定することにより好みのメールインターフェイスを使用すること
ができる。例えば、Wanderlust を使用したい場合は下記のように設定する。

    (setq mail-user-agent 'wl-user-agent) " t nil)

(autoload 'skk-get "skk-develop" "\
DIR.

\(fn DIR)" t nil)

(add-hook 'before-init-hook (lambda nil (eval-after-load "font-lock" '(set (if (boundp 'lisp-el-font-lock-keywords-2) 'lisp-el-font-lock-keywords-2 'lisp-font-lock-keywords-2) (nconc (list (list (concat "(\\(\\(skk-\\)?def\\(" "\\(un-cond\\|subst-cond\\|advice\\|" "macro-maybe\\|alias-maybe\\|un-maybe\\)\\|" "\\(var\\|localvar\\)" "\\)\\)\\>" "[ \11'(]*" "\\(\\sw+\\)?") '(1 font-lock-keyword-face) '(6 (cond ((match-beginning 4) font-lock-function-name-face) ((match-beginning 5) font-lock-variable-name-face)) nil t))) (list (list (concat "(" (regexp-opt '("skk-save-point" "skk-with-point-move" "skk-loop-for-buffers") t) "\\>") '(1 font-lock-keyword-face))) (list (list "(\\(skk-error\\)\\>" '(1 font-lock-warning-face))) (symbol-value (if (boundp 'lisp-el-font-lock-keywords-2) 'lisp-el-font-lock-keywords-2 'lisp-font-lock-keywords-2))))) (put 'skk-deflocalvar 'doc-string-elt 3) (put 'skk-defadvice 'doc-string-elt 3)))

;;;### (autoloads "actual autoloads are elsewhere" "skk-develop"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-develop.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-develop.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-develop" '("skk-get-")))

;;;***

;;;***

;;;### (autoloads nil "skk-emacs" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-emacs.el"
;;;;;;  "a0c4827d8ff7066f3e236e69c3cb73b3")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-emacs.el

(autoload 'skk-emacs-prepare-menu "skk-emacs" nil nil nil)

(autoload 'skk-emacs-prepare-modeline-properties "skk-emacs" nil nil nil)

(autoload 'skk-search-ja-dic "skk-emacs" "\
GNU Emacs に付属するかな漢字変換辞書を用いて検索する。
現在の Emacs には SKK-JISYO.L を基に変換された ja-dic.el が付属している。
この辞書データを用いて送りあり、送りなし、接頭辞、接尾辞の変換を行う。
ただし、SKK-JISYO.L のような英数変換、数値変換などはできない。" nil nil)

(autoload 'skk-jis2sjis2 "skk-emacs" "\


\(fn CHAR1 CHAR2)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-emacs" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-emacs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-emacs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-emacs" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-gadget" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-gadget.el"
;;;;;;  "86f62a1d3de006299f21f7a7148967a7")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-gadget.el

(autoload 'skk-current-date "skk-gadget" "\
`current-time-string' の出力を加工し、現在の日時 (string) を返す。
オプショナル引数の PP-FUNCTION を指定すると、
  `skk-current-date-1' の返り値、 FORMAT 、 AND-TIME
を引数にして PP-FUNCTION を `funcall' する。
PP-FUNCTION が nil の場合は `skk-default-current-date-function' を
`funcall' する。
FORMAT は `format' の第１引数の様式 (string) による出力指定テンプレート。
AND-TIME (boolean) を指定すると時刻も返す。
`skk-today' と `skk-clock' のサブルーチンである。

\(fn &optional PP-FUNCTION FORMAT AND-TIME)" nil nil)

(autoload 'skk-default-current-date "skk-gadget" "\
日付情報の標準的な出力をする他、ユーザにある程度のカスタマイズ機能を提供する。
この関数の引数でカスタマイズできない出力を希望する場合は、
`skk-default-current-date-function' に自前の関数を指定する。

DATE-INFORMATION は

  (year month day day-of-week hour minute second)

の形式のリスト。各要素は文字列。`skk-current-date-1' の出力を使用。

FORMAT は `format' の第１引数の様式による出力形態を指定する文字列。
  nil であれば \"%s年%s月%s日(%s)%s時%s分%s秒\" (もしくは
  \"%s年%s月%s日(%s)\" が使われる。

NUM-TYPE (number) は
  0 -> 無変換
  1 -> 全角数字へ変換
  2 -> 漢数字へ変換 (位取りなし)
  3 -> 漢数字へ変換 (位取りをする)
  4 -> その数字そのものをキーにして辞書を再検索
  5 -> 漢数字 (手形などで使用する文字を使用)へ変換 (位取りをする)
  9 -> 将棋で使用する数字 (\"３四\" など) に変換

GENGO は元号表示するかどうか (boolean)。

GENGO-INDEX は `skk-gengo-alist' の各要素の cadr を 0 とする index
 (number)。nil であれば `current-time-string' の出力のまま無変換。

MONTH-ALIST-INDEX は `skk-month-alist' の各要素の cadr を 0 とする
 index (number)。nil であれば `current-time-string' の出力のまま無変換。

DAYOFWEEK-ALIST-INDEX は `skk-day-of-week-alist' の各要素の cadr を
 0 とする index (number)。nil であれば `current-time-string' の出力のま
ま無変換。

AND-TIME は時刻も表示するかどうか (boolean)。

\(fn DATE-INFORMATION FORMAT NUM-TYPE GENGO GENGO-INDEX MONTH-ALIST-INDEX DAYOFWEEK-ALIST-INDEX &optional AND-TIME)" nil nil)

(autoload 'skk-relative-date "skk-gadget" "\
`skk-current-date' の拡張版。PP-FUNCTION, FORMAT, AND-TIME は `skk-current-date' を参照のこと。
実行例
 (skk-relative-date) => \"平成25年2月03日(日)\"
 (skk-relative-date (lambda (arg) body) nil nil :dd -1) => \"平成25年2月02日(土)\"
 (skk-relative-date (lambda (arg) body) nil nil :mm -1) => \"平成25年1月03日(木)\"
 (skk-relative-date (lambda (arg) body) nil nil :yy  2) => \"平成27年2月03日(火)\"

\(fn PP-FUNCTION FORMAT AND-TIME &key (YY 0) (MM 0) (DD 0))" nil nil)

(autoload 'skk-today "skk-gadget" "\
`current-time-string' の出力を加工し、現在の日時を表す文字列を作り、挿入
する。実質的に「today エントリの呼び出し」だけなので、カスタマイズは個人
辞書の today エントリによる。

\(fn ARG)" t nil)

(autoload 'skk-clock "skk-gadget" "\
ミニバッファにデジタル時計を表示する。
quit すると、その時点の日時を候補として挿入する。
quit したときに起動してからの経過時間をミニバッファに表示する。
interactive に起動する他、\"clock /(skk-clock)/\" などのエントリを SKK の辞書
に加え、\"/clock\"+ SPC で変換することによっても起動可。\\[keyboard-quit] で止まる。
実行変換で起動した場合は、\\[keyboard-quit] した時点の時点の日時を挿入する。

オプショナル引数の KAKUTEI-WHEN-QUIT が non-nil であれば \\[keyboard-quit] したときに確定する。
オプショナル引数の TIME-SIGNAL が non-nil であれば、NTT の時報風に ding する。
それぞれ \"clock /(skk-clock nil t)/\" のようなエントリを辞書に挿入すれば良い。
`skk-date-ad' と `skk-number-style' によって表示方法のカスタマイズが可能。

\(fn &optional KAKUTEI-WHEN-QUIT TIME-SIGNAL)" t nil)

(autoload 'skk-ad-to-gengo "skk-gadget" "\


\(fn GENGO-INDEX &optional DIVIDER TAIL NOT-GANNEN)" nil nil)

(autoload 'skk-ad-to-gengo-1 "skk-gadget" "\


\(fn AD &optional NOT-GANNEN MONTH DAY)" nil nil)

(autoload 'skk-gengo-to-ad "skk-gadget" "\


\(fn &optional HEAD TAIL)" nil nil)

(autoload 'skk-gengo-to-ad-1 "skk-gadget" "\


\(fn GENGO NUMBER)" nil nil)

(autoload 'skk-calc "skk-gadget" "\


\(fn OPERATOR)" nil nil)

(autoload 'skk-plus "skk-gadget" nil nil nil)

(autoload 'skk-minus "skk-gadget" nil nil nil)

(autoload 'skk-times "skk-gadget" nil nil nil)

(autoload 'skk-ignore-dic-word "skk-gadget" "\


\(fn &rest NO-SHOW-LIST)" nil nil)

(autoload 'skk-henkan-face-off-and-remove-itself "skk-gadget" nil nil nil)

(autoload 'skk-gadget-units-conversion "skk-gadget" "\
`skk-units-alist'を参照し、換算を行う。
NUMBER について UNIT-FROM から UNIT-TO への換算を行う。

\(fn UNIT-FROM NUMBER UNIT-TO)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-gadget" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-gadget.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-gadget.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-gadget" '("skk-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "skk-hint" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-hint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-hint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-hint" '("skk-hint-")))

;;;***

;;;### (autoloads nil "skk-inline" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-inline.el"
;;;;;;  "a937b390ab64d070ba80cb91a7a290ed")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-inline.el

(autoload 'skk-inline-show "skk-inline" "\


\(fn STR FACE &optional VERTICAL-STR TEXT-MAX-HEIGHT)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-inline" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-inline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-inline.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-inline" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-isearch" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-isearch.el"
;;;;;;  "81bd444f6f003562e5a30a5fa2349187")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-isearch.el

(autoload 'skk-isearch-message "skk-isearch" "\
Show isearch message." nil nil)

(autoload 'skk-isearch-mode-setup "skk-isearch" "\
hook function called when skk isearch begin." nil nil)

(autoload 'skk-isearch-mode-cleanup "skk-isearch" "\
Hook function called when skk isearch is done." nil nil)

(autoload 'skk-isearch-skk-mode "skk-isearch" "\


\(fn &rest ARGS)" t nil)

(defconst skk-isearch-really-early-advice (lambda nil (defadvice isearch-message-prefix (around skk-isearch-ad activate) (let ((current-input-method (unless (and (boundp 'skk-isearch-switch) skk-isearch-switch) current-input-method))) ad-do-it)) (defadvice isearch-toggle-input-method (around skk-isearch-ad activate) (cond ((string-match "^japanese-skk" (format "%s" default-input-method)) (let ((skk-isearch-initial-mode-when-skk-mode-disabled 'latin)) (skk-isearch-mode-setup) (skk-isearch-skk-mode))) ((null default-input-method) ad-do-it (when (string-match "^japanese-skk" (format "%s" default-input-method)) (let ((skk-isearch-initial-mode-when-skk-mode-disabled 'latin)) (skk-isearch-mode-setup)) (skk-deactivate-input-method))) (t ad-do-it)))))

(unless (featurep 'xemacs) (define-key isearch-mode-map [(control \\)] 'isearch-toggle-input-method) (cond ((and (featurep 'advice) (assq 'skk-isearch-ad (assq 'around (ad-get-advice-info 'isearch-toggle-input-method)))) nil) ((locate-library "advice") (funcall skk-isearch-really-early-advice)) (t (add-hook 'before-init-hook skk-isearch-really-early-advice))))

;;;### (autoloads "actual autoloads are elsewhere" "skk-isearch"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-isearch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-isearch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-isearch" '("skk-isearch-")))

;;;***

;;;***

;;;### (autoloads nil "skk-jisx0201" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisx0201.el"
;;;;;;  "779432f66b381b573222233b56eba472")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisx0201.el

(autoload 'skk-jisx0201-mode "skk-jisx0201" "\
SKK のモードを JIS X 0201 モードに変更する。

\(fn ARG)" t nil)

(autoload 'skk-toggle-katakana "skk-jisx0201" "\


\(fn ARG)" t nil)

(autoload 'skk-hiragana-to-jisx0201-region "skk-jisx0201" "\


\(fn START END)" nil nil)

(autoload 'skk-katakana-to-jisx0201-region "skk-jisx0201" "\


\(fn START END)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-jisx0201"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisx0201.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisx0201.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-jisx0201" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-jisx0213" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisx0213.el"
;;;;;;  "a4e6a0199bb812845e620e18cf2d76be")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisx0213.el

(autoload 'skk-jisx0213-henkan-list-filter "skk-jisx0213" nil nil nil)

;;;***

;;;### (autoloads nil "skk-jisyo-edit-mode" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisyo-edit-mode.el"
;;;;;;  "84408c9f1a583bf795f6e0ad133cc7ae")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisyo-edit-mode.el

(autoload 'skk-jisyo-edit-mode "skk-jisyo-edit-mode" "\
Major mode for editing SKK JISYO." t nil)

(add-to-list 'auto-mode-alist '("SKK-JISYO" . skk-jisyo-edit-mode) t)

(add-to-list 'auto-mode-alist '("\\.skk-jisyo\\(\\.BAK\\|\\.bak\\|~\\)?$" . skk-jisyo-edit-mode))

(add-to-list 'auto-mode-alist '("\\..*skk/jisyo\\(\\.BAK\\|\\.bak\\|~\\)?$" . skk-jisyo-edit-mode))

(autoload 'skk-edit-private-jisyo "skk-jisyo-edit-mode" "\
個人辞書ファイル `skk-jisyo' を編集する。
任意での個人辞書保存のあと、`skk-jisyo' を開き、`skk-jisyo-edit-mode' に入る。
ローカルに 以下のキー定義が追加される。

key       binding
---       -------
C-c C-c   Save & Exit
C-c C-k   Abort

SKK 使用中の場合は SKK による個人辞書バッファの更新が禁止される。

オプショナル引数 CODING-SYSTEM にて個人辞書のコード系を指定可能。

この機能は従来の手動での個人辞書編集より配慮されているが、SKK 辞書の構文を
チェックすることはできず、自己責任での編集であることは変わりない。

\(fn &optional CODING-SYSTEM)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-jisyo-edit-mode"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisyo-edit-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisyo-edit-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-jisyo-edit-mode" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-kakasi" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kakasi.el"
;;;;;;  "be09e8c04ba63c484c3d39d5708b614e")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kakasi.el

(autoload 'skk-gyakubiki-region "skk-kakasi" "\
領域の漢字、送り仮名を全てひらがなに変換する。
オプショナル引数の ALL が non-nil ならば、複数の候補がある場合は、\"{}\" でく
くって表示する。
例えば、
    中島 -> {なかしま|なかじま}

\(fn START END &optional ALL)" t nil)

(autoload 'skk-gyakubiki-and-henkan "skk-kakasi" "\
領域の漢字をひらがなに変換し、そのひらがなを見出し語としてかな漢字変換を実行する。

\(fn START END)" t nil)

(autoload 'skk-gyakubiki-message "skk-kakasi" "\
領域の漢字、送り仮名を全てひらがなに変換後、エコーする。
オプショナル引数の ALL が non-nil ならば、複数の候補がある場合は、\"{}\" でく
くって表示する。
例えば、
    中島 -> {なかしま|なかじま}

\(fn START END &optional ALL)" t nil)

(autoload 'skk-gyakubiki-katakana-region "skk-kakasi" "\
領域の漢字、送り仮名を全てカタカナに変換する。
オプショナル引数の ALL が non-nil ならば、複数の候補がある場合は、\"{}\" でく
くって表示する。
例えば、
    中島 -> {ナカシマ|ナカジマ}

\(fn START END &optional ALL)" t nil)

(autoload 'skk-gyakubiki-katakana-message "skk-kakasi" "\
領域の漢字、送り仮名を全てカタカナに変換後、エコーする。
オプショナル引数の ALL が non-nil ならば、複数の候補がある場合は、\"{}\" でく
くって表示する。
例えば、
    中島 -> {ナカシマ|ナカジマ}

\(fn START END &optional ALL)" t nil)

(autoload 'skk-hurigana-region "skk-kakasi" "\
領域の漢字に全てふりがなを付ける。
例えば、
   \"変換前の漢字の脇に\" -> \"変換前[へんかんまえ]の漢字[かんじ]の脇[わき]に\"

オプショナル引数の ALL が non-nil ならば、複数の候補がある場合は、\"{}\" でく
くって表示する。
例えば、
    \"中島\" -> \"中島[{なかしま|なかじま}]\"

\(fn START END &optional ALL)" t nil)

(autoload 'skk-hurigana-message "skk-kakasi" "\
領域の漢字に全てふりがなを付け、エコーする。
例えば、
   \"変換前の漢字の脇に\" -> \"変換前[へんかんまえ]の漢字[かんじ]の脇[わき]に\"

オプショナル引数の ALL が non-nil ならば、複数の候補がある場合は、\"{}\" でく
くって表示する。
例えば、
    \"中島\" -> \"中島[{なかしま|なかじま}]\"

\(fn START END &optional ALL)" t nil)

(autoload 'skk-hurigana-katakana-region "skk-kakasi" "\
領域の漢字に全てフリガナを付ける。
例えば、
   \"変換前の漢字の脇に\" -> \"変換前[ヘンカンマエ]の漢字[カンジ]の脇[ワキ]に\"

オプショナル引数の ALL が non-nil ならば、複数の候補がある場合は、\"{}\" でく
くって表示する。
例えば、
    \"中島\" -> \"中島[{ナカシマ|ナカジマ}]\"

\(fn START END &optional ALL)" t nil)

(autoload 'skk-hurigana-katakana-message "skk-kakasi" "\
領域の漢字に全てフリガナを付け、エコーする。
例えば、
   \"変換前の漢字の脇に\" -> \"変換前[ヘンカンマエ]の漢字[カンジ]の脇[ワキ]に\"

オプショナル引数の ALL が non-nil ならば、複数の候補がある場合は、\"{}\" でく
くって表示する。
例えば、
    \"中島\" -> \"中島[{ナカシマ|ナカジマ}]\"

\(fn START END &optional ALL)" t nil)

(autoload 'skk-romaji-region "skk-kakasi" "\
領域の漢字、ひらがな、カタカナ、全英文字を全てローマ字に変換する。
変換には、ヘボン式を用いる。
例えば、
   \"漢字かな混じり文をローマ字に変換\"
    -> \"  kan'zi  kana  ma  ziri  bun'  woro-ma  zi ni hen'kan' \"

`skk-romaji-*-by-hepburn' が nil であれば、ローマ字への変換様式を訓令式に変更す
る。例えば、\"し\" はヘボン式では \"shi\" だが、訓令式では \"si\" となる。

\(fn START END)" t nil)

(autoload 'skk-romaji-message "skk-kakasi" "\
領域の漢字、ひらがな、カタカナ、全英文字を全てローマ字に変換し、エコーする。
変換には、ヘボン式を用いる。
例えば、
   \"漢字かな混じり文をローマ字に変換\"
    -> \"  kan'zi  kana  ma  ziri  bun'  woro-ma  zi ni hen'kan' \"

`skk-romaji-*-by-hepburn' が nil であれば、ローマ字への変換様式を訓令式に変更す
る。例えば、\"し\" はヘボン式では \"shi\" だが、訓令式では \"si\" となる。

\(fn START END)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-kakasi" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kakasi.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kakasi.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-kakasi" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-kcode" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kcode.el"
;;;;;;  "9ee8a2c2547c01002f5e6493856f9d74")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kcode.el

(autoload 'skk-input-by-code-or-menu "skk-kcode" "\
変数 `skk-kcode-method' で指定された機能を用いて文字を挿入する。

\(fn &optional ARG)" t nil)

(autoload 'skk-display-code-for-char-at-point "skk-kcode" "\
ポイントにある文字の区点番号、JIS コード、EUC コード、シフト JIS コード及びユニコードを表示する。

\(fn &optional ARG)" t nil)

(autoload 'skk-list-chars "skk-kcode" "\
変数 `skk-kcode-charset' に従って文字一覧を表示する.
\\[universal-argument] 付きで実行すると、following-char() を優先表示する.

\(fn ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-kcode" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kcode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kcode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-kcode" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-leim" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-leim.el"
;;;;;;  "771a8876e17589d0bac024813a6483e0")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-leim.el

(autoload 'skk-activate "skk-leim" "\


\(fn &optional NAME)" nil nil)

(autoload 'skk-auto-fill-activate "skk-leim" "\


\(fn &optional NAME)" nil nil)

(autoload 'skk-inactivate "skk-leim" nil nil nil)

(autoload 'skk-auto-fill-inactivate "skk-leim" nil nil nil)

(register-input-method "japanese-skk" "Japanese" 'skk-activate "" "Simple Kana to Kanji conversion program")

(register-input-method "japanese-skk-auto-fill" "Japanese" 'skk-auto-fill-activate "" "Simple Kana to Kanji conversion program with auto-fill")

;;;### (autoloads "actual autoloads are elsewhere" "skk-leim" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-leim.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-leim.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-leim" '("skk-leim-exit-from-minibuffer")))

;;;***

;;;***

;;;### (autoloads nil "skk-look" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-look.el"
;;;;;;  "8d36d91fc5c50292c7f64a79d76d9ace")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-look.el

(autoload 'skk-look "skk-look" "\
UNIX look コマンドを利用して変換する。
SKK abbrev モードにて、英文字 + アスタリスクで uncompleted spelling を指定する。
詳しくは skk-look.el ファイルのコメントや Info を参照の事。
CONVERSION-ARGUMENTS は `skk-look-conversion-arguments' を
一時的に置き換えたい時に指定する。
デフォルトでは SKK abbrev モードのみで有効な機能だが、
NOT-ABBREV-ONLY を指定する事で常に有効となる。
EXPAND-NULL を指定すると、入力が \"*\" のみの時は
words ファイルにある全ての見出しが対象となる。
`skk-look-recursive-search', `skk-look-expanded-word-only',
`skk-look-use-ispell' を一時的に変更したい場合には
`let' により束縛して使う事。

\(fn &optional CONVERSION-ARGUMENTS NOT-ABBREV-ONLY EXPAND-NULL)" nil nil)

(autoload 'skk-look-completion "skk-look" "\
look コマンドを利用して補完候補を得る。
COMPLETION-ARGUMENTS は `skk-look-completion-arguments' を
一時的に置き換えたい時に指定する。
デフォルトでは SKK abbrev モードのみで有効な機能だが、
NOT-ABBREV-ONLY を指定する事で常に有効となる。
EXPAND-NULL を指定すると、入力が空である時に
words ファイルにある全ての見出しを返す。
`skk-look-use-ispell' を一時的に変更したい場合には
`let' により束縛して使う事。

\(fn &optional COMPLETION-ARGUMENTS NOT-ABBREV-ONLY EXPAND-NULL)" nil nil)

(autoload 'skk-look-ispell "skk-look" "\


\(fn WORD &optional SITUATION)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-look" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-look.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-look.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-look" '("skk-look-1")))

;;;***

;;;***

;;;### (autoloads nil "skk-macs" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-macs.el"
;;;;;;  "7e5d92266eb232e6542c0c6a2b533e02")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-macs.el

(put 'skk-defadvice 'lisp-indent-function 'defun)

(put 'skk-loop-for-buffers 'lisp-indent-function 1)

;;;### (autoloads "actual autoloads are elsewhere" "skk-macs" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-macs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-macs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-macs" '("skk-" "string-to-int-list")))

;;;***

;;;***

;;;### (autoloads nil "skk-num" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-num.el"
;;;;;;  "a70d74ddf6902e012aec2e651ca76256")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-num.el

(autoload 'skk-num-compute-henkan-key "skk-num" "\
KEY の中の連続する数字を現わす文字列を \"#\" に置き換えた文字列を返す。
\"12\" や \"０９\" など連続する数字を 1 つの \"#\" に置き換えることに注意。
置き換えた数字を `skk-num-list' の中にリストの形で保存する。
例えば、KEY が \"へいせい7ねん12がつ\" であれば、\"へいせい#ねん#がつ\"
と変換し、`skk-num-list' に (\"7\" \"12\") というリストを代入する。
辞書の見出し語の検索に使用する。

\(fn KEY)" nil nil)

(autoload 'skk-num-convert "skk-num" "\
INDEX が指す `skk-henkan-list' の要素を数値変換のために加工する。
`skk-henkan-list' の INDEX が指している候補 (数値変換キーの)を
  \"#2\" -> (\"#2\" .\"一\")
のように変換する。

\(fn INDEX)" nil nil)

(autoload 'skk-num-multiple-convert "skk-num" "\


\(fn &optional COUNT)" nil nil)

(autoload 'skk-num-exp "skk-num" "\
ascii 数字 (string) の NUM を TYPE に従って変換した文字列を返す。
TYPE は下記の通り。
0 -> 無変換
1 -> 全角数字へ変換
2 -> 漢数字 (位取りあり) へ変換。例;1024 -> 一〇二四
3 -> 漢数字 (位取りなし) へ変換。例;1024 -> 千二十四
4 -> その数字そのものをキーにして辞書を再検索
5 -> 漢数字 (手形などで使用する文字を使用) へ変換
8 -> 桁区切りへ変換 (1,234,567)
9 -> 将棋で使用する数字 (\"３四\" など) へ変換

\(fn NUM TYPE)" nil nil)

(autoload 'skk-num-uniq "skk-num" nil nil nil)

(autoload 'skk-num-initialize "skk-num" "\
`skk-use-numeric-conversion' 関連の変数を初期化する。" nil nil)

(autoload 'skk-num-henkan-key "skk-num" "\
適切な変換キーを返す。
type4 の数値再変換が行われたときは、数値自身を返し、それ以外の数値変換
では、`skk-henkan-key' の数値を \"#\" で置き換えたキーを返す。" nil nil)

(autoload 'skk-num-update-jisyo "skk-num" "\
数字自身を見出し語として辞書をアップデートする。

\(fn NOCONVWORD WORD &optional PURGE)" nil nil)

(autoload 'skk-num "skk-num" "\
数字を `skk-number-style' の値に従い変換する。
`skk-current-date' のサブルーチン。

\(fn STR)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-num" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-num.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-num.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-num" '("add-number-grouping" "skk-num-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "skk-search-web"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-search-web.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-search-web.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-search-web" '("skk-")))

;;;***

;;;### (autoloads nil "skk-server" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server.el"
;;;;;;  "3183f9aaf42c9098da891f3b86b5f5d5")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server.el

(autoload 'skk-server-version "skk-server" "\
Return version information of SKK server.
When called interactively, print version information." t nil)

(autoload 'skk-search-server-1 "skk-server" "\
`skk-search-server' のサブルーチン。

\(fn FILE LIMIT)" nil nil)

(autoload 'skk-adjust-search-prog-list-for-server-search "skk-server" "\
変数 `skk-search-prog-list' を調整する。
`skk-server-host' もしくは `skk-servers-list' が nil であれば、
`skk-search-prog-list' から `skk-search-server' を car に持つリストを消す。
non-nil であれば、加える。

\(fn &optional NON-DEL)" nil nil)

(autoload 'skk-disconnect-server "skk-server" "\
辞書サーバを切り離す。" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-server" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-server" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-server-completion" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server-completion.el"
;;;;;;  "acf87d109ec25f0f96c592a1528459f2")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server-completion.el

(autoload 'skk-server-completion-search "skk-server-completion" "\
サーバーコンプリーションを行い、得られた各見出しでさらに検索する。
送り有り変換には非対応。" nil nil)

(autoload 'skk-comp-by-server-completion "skk-server-completion" "\
Server completion に対応した辞書サーバを利用する補完プログラム。
`skk-completion-prog-list' の要素に指定して使う。" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-server-completion"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server-completion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-server-completion" '("skk-server-completion-search-midasi")))

;;;***

;;;***

;;;### (autoloads nil "skk-show-mode" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-show-mode.el"
;;;;;;  "3551b60efe6f7a76830adbab7373e825")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-show-mode.el

(autoload 'skk-show-mode "skk-show-mode" nil t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-show-mode"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-show-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-show-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-show-mode" '("skk-show-mode-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "skk-sticky" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-sticky.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-sticky.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-sticky" '("skk-sticky-")))

;;;***

;;;### (autoloads nil "skk-study" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-study.el"
;;;;;;  "aa0455f7bdf5f0119fce2dcfca1a480a")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-study.el

(autoload 'skk-study-search "skk-study" "\
学習データを参照して ENTRY を加工し、関連性のある語の優先順位を上げて返す。

\(fn HENKAN-BUFFER MIDASI OKURIGANA ENTRY)" nil nil)

(autoload 'skk-study-update "skk-study" "\
MIDASI と WORD について `skk-study-data-ring' の最初の関連語を関連付けて学習する。

\(fn HENKAN-BUFFER MIDASI OKURIGANA WORD PURGE)" nil nil)

(autoload 'skk-study-save "skk-study" "\
学習結果を `skk-study-file' へ保存する。
オプショナル引数の NOMSG が non-nil であれば、保存メッセージを表示しない。

\(fn &optional NOMSG)" t nil)

(autoload 'skk-study-switch-current-theme "skk-study" "\
カレントバッファに対して skk-study の学習テーマ THEME を設定する。
学習テーマ名 THEME には任意の文字列を指定できる。
カレントバッファに学習テーマが設定されないときは、学習テーマ
\"general\" に対して学習が行われる。

\(fn THEME)" t nil)

(autoload 'skk-study-remove-theme "skk-study" "\
skk-study の学習テーマ THEME を削除する。

\(fn THEME)" t nil)

(autoload 'skk-study-copy-theme "skk-study" "\
skk-study の学習テーマ FROM を TO にコピーする。
TO の既存データは破壊される。

\(fn FROM TO)" t nil)

(autoload 'skk-study-read "skk-study" "\
`skk-study-file' から学習結果を読み込む。
オプショナル引数の FORCE が non-nil であれば、破棄の確認をしない。

\(fn &optional NOMSG FORCE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-study" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-study.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-study.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-study" '("skk-study-")))

;;;***

;;;***

;;;### (autoloads nil "skk-tankan" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tankan.el"
;;;;;;  "f678d371c18654942f5e4c9ce9a45df4")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tankan.el

(autoload 'skk-tankan "skk-tankan" "\
単漢字変換を開始する。
\\[skk-tankan] で部首変換を、
\\[universal-argument] 数値 \\[skk-tankan] で総画数変換を開始する。

\(fn ARG)" t nil)

(autoload 'skk-tankan-search "skk-tankan" "\
変数 `skk-henkan-key' で指定された「読み」に基づいて単漢字変換を実行する。
通常は `skk-search-prog-list' の１要素として次の形式で指定される。
'(skk-tankan-search 'skk-search-jisyo-file
                    skk-large-jisyo 10000))

\(fn FUNC &rest ARGS)" nil nil)

(autoload 'skk-search-tankanji "skk-tankan" "\


\(fn &optional JISYO)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-tankan" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tankan.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tankan.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-tankan" '("skk-")))

;;;***

;;;***

;;;### (autoloads nil "skk-tut" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tut.el"
;;;;;;  "932227c62b2280f80d276ab61191dbcf")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tut.el

(autoload 'skk-tutorial "skk-tut" "\
Start SKK tutorial.
You can select English version by \\[universal-argument] \\[skk-tutorial].

\(fn &optional QUERY-LANGUAGE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-tut" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tut.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tut.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-tut" '("skk")))

;;;***

;;;***

;;;### (autoloads nil "skk-vars" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-vars.el"
;;;;;;  "76731dce5c35dbf6f1cb8a00b7a0a764")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-vars.el

(put 'skk-deflocalvar 'lisp-indent-function 'defun)

(put 'skk-kutouten-type 'safe-local-variable 'symbolp)

(defvar skk-preload nil "\
*Non-nil ならば、Emacs 起動時に SKK プログラムと辞書の読み込みを済ませる。
Emacs の起動そのものは遅くなるが、DDSKK の初回起動を早くすることができる。")

(custom-autoload 'skk-preload "skk-vars" t)

(defvar skk-isearch-switch nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-vars" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-vars.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-vars.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-vars" '("skk")))

;;;***

;;;***

;;;### (autoloads nil "skk-version" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-version.el"
;;;;;;  "b7f7c08d08990f61b002fc011bd99b79")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-version.el

(autoload 'skk-version "skk-version" "\
Return SKK version with its codename.
If WITHOUT-CODENAME is non-nil, simply return SKK version without
the codename.

\(fn &optional WITHOUT-CODENAME)" t nil)

;;;***

;;;### (autoloads nil "skk-viper" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-viper.el"
;;;;;;  "b0a3a24fa910db2c11ca8ba9362ba8e9")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-viper.el

(autoload 'skk-viper-normalize-map "skk-viper" nil nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "skk-viper" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-viper.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-viper.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "skk-viper" '("skk-viper-")))

;;;***

;;;***

;;;### (autoloads nil "tar-util" "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/tar-util.el"
;;;;;;  "7a6488a80f573f58750d842ba8efd458")
;;; Generated autoloads from ../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/tar-util.el

(autoload 'tar-make-descriptor "tar-util" "\
BUFFER is made by function `tar-raw-buffer'.
Return list like `tar-parse-info', See `tar-mode'.
this function is based on `tar-summarize-buffer'.

\(fn BUFFER)" nil nil)

(autoload 'tar-file-descriptor "tar-util" "\
Return descriptor Structure for match FILE in BUFFER.
BUFFER is made by function `tar-raw-buffer'.

\(fn BUFFER FILE)" nil nil)

(autoload 'tar-raw-buffer "tar-util" "\
ARCHIVE is path to tar archive.
Return buffer object.

\(fn ARCHIVE)" nil nil)

(autoload 'tar-list-files "tar-util" "\
ARCHIVE is path to tar archive.

\(fn ARCHIVE)" nil nil)

(autoload 'tar-salvage-file "tar-util" "\
Salvage SALVAGEFILE in ARCHIVE, and save to SAVEFILE.

\(fn ARCHIVE SALVAGEFILE SAVEFILE)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/context-skk.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/ddskk-autoloads.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/ddskk-pkg.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-abbrev.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-act.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-annotation.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-auto.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-azik.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cdb.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-comp.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cursor.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-cus.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-dcomp.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-develop.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-emacs.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-gadget.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-hint.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-inline.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-isearch.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisx0201.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisx0213.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-jisyo-edit-mode.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kakasi.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-kcode.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-leim.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-look.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-macs.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-num.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-search-web.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server-completion.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-server.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-show-mode.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-sticky.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-study.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tankan.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-tut.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-vars.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-version.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk-viper.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/skk.el"
;;;;;;  "../../../../../../../.config/emacs/elpa/ddskk-20191210.1919/tar-util.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ddskk-autoloads.el ends here
