(defpackage pycreator/tests/main
  (:use :cl
        :pycreator
        :rove))
(in-package :pycreator/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :pycreator)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
