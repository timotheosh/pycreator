(defsystem "pycreator"
  :version "0.1.0"
  :author "Tim Hawes"
  :license "MIT"
  :depends-on ("py4cl")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "pycreator/tests"))))

(defsystem "pycreator/tests"
  :author "Tim Hawes"
  :license "MIT"
  :depends-on ("pycreator"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for pycreator"
  :perform (test-op (op c) (symbol-call :rove :run c)))
