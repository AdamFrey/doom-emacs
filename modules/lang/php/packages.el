;; -*- no-byte-compile: t; -*-
;;; lang/php/packages.el

(package! php-boris :pin "f2faebf610c917f7091f7ec0cd97645629c4f819")
(package! php-extras
  :recipe (:host github :repo "arnested/php-extras")
  :pin "81ebd7c1a8c8d02b2775d4cdbf73653feb608a7c")
(package! php-mode :pin "f4c7c6995dadcdc6da5fefadfd362f8418b2eec1")
(package! php-refactor-mode :pin "7a794b0618df2882b1bd586fdd698dba0bc5130d")
(package! phpunit :pin "fe6bc91c3bd8b329c6d26ad883a025f06b5121ee")

(when (featurep! +hack)
  (package! hack-mode
    :recipe (:host github :repo "hhvm/hack-mode")
    :pin "572c3b41bed91ea543434c04914a7a0c45fec7c7"))

(unless (featurep! +lsp)
  (package! phpactor :pin "62d2372ea55c0c5fb4e77076988472ebb5d85f24")
  (when (featurep! :completion company)
    (package! company-phpactor :pin "62d2372ea55c0c5fb4e77076988472ebb5d85f24")))

(when (featurep! :editor format)
  (package! php-cs-fixer :pin "95eace9bc0ace128d5166e303c76df2b778c4ddb"))

;; For building php-extras
(package! async :pin "36a10151e70e956e2f766ed9e65f4a9cfc8479b2")
