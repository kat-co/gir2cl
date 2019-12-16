(defpackage gir2cl/tests/main
  (:use :cl
        :gir2cl
        :rove))
(in-package :gir2cl/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :gir2cl)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
