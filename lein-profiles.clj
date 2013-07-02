{:user {:plugins [[lein-ritz "0.7.0"]
                  [lein-immutant "1.0.0.beta2"]
                  [lein-midje "3.0.0"]
                  [s3-wagon-private "1.1.2"]
                  [codox "0.6.5-SNAPSHOT"]
                  [speclj "2.7.4"]
                  [lein-difftest/lein-difftest "2.0.0"]
                  [lein-cloverage "1.0.2"]]
        :dependencies [[javert "0.2.0-SNAPSHOT"]
                       [ritz/ritz-nrepl-middleware "0.7.0"]
                       [org.clojure/tools.namespace "0.2.3"]]
        :repl-options {:nrepl-middleware
                       [inspector.middleware/wrap-inspect
                        ritz.nrepl.middleware.javadoc/wrap-javadoc
                        ritz.nrepl.middleware.apropos/wrap-apropos]
                       :init
                       (do
                         (use '[clojure.tools.namespace.repl :only (refresh)]))}}}
