(defsystem "gir2cl"
  :version "0.1.2"
  :author "Katherine Cox-Buday <cox.katherine.e@gmail.com>"
  :license "GPLv3"
  :depends-on (#:cxml
               #:cl-gobject-introspection
               #:kebab
               #:simple-date-time)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description
  "gir2cl generates Common Lisp code from GIR files."
  :in-order-to ((test-op (test-op "gir2cl/tests"))))

(defsystem "gir2cl/tests"
  :author "Katherine Cox-Buday <cox.katherine.e@gmail.com>"
  :license "GPLv3"
  :depends-on ("gir2cl"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for gir2cl"
  :perform (test-op (op c) (symbol-call :rove :run c)))
