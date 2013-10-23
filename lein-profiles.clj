{:user {:deploy-repositories
        [["cs-deploy"
          {:url "http://repo.clickscape.com:8080/repository/internal"
           :creds :gpg}]]
        :dependencies [[alembic "0.2.0"]]
        :plugins [[lein-ritz "0.7.0"]
                  [lein-immutant "1.0.0"]
                  [codox "0.6.5-SNAPSHOT"]
                  [lein-difftest/lein-difftest "2.0.0"]
                  [lein-cloverage "1.0.2"]
                  [lein-cljsbuild "0.3.2"]
                  [lein-ancient "0.4.4"]
                  [lein-release/lein-release "1.1.3"]
                  [lein-try "0.2.0"]
                  [lein-deps-tree "0.1.2"]
                  [alembic "0.2.0"]]}}
