-- # Foam Space package set
--
-- overrides https://github.com/purescript/package-sets
--
-- ## Usage
--
-- In `package.dhall`
--
-- ```dhall
-- let upstream =
--       https://github.com/purescript/package-sets/releases/download/psc-0.14.5-20220110/packages.dhall sha256:8dbf71bfc6c7a11043619eebe90ff85f7d884541048aa8cc48eef1ee781cbc0e
--
-- let foamSpacePackages = https://raw.githubusercontent.com/f-o-a-m/package-sets/master/packages.dhall
--
-- let overrides = {=}
--
-- let additions = {=}
--
-- in  (upstream // foamSpacePackages // overrides // additions)
-- ```
--
-- To validate use
--
-- ```sh
-- dhall freeze --inplace ./packages.dhall
-- ```
--
-- # Why this approach?
--
-- This approach is used in https://github.com/srghma/my-purescript-package-sets
--
-- But here it's also possible to "override" packages from upstream
--
-- Like this https://github.com/srghma/my-purescript-package-sets/blob/00e26e6c2441de7fe27889d36435ba7ede2c39cc/packages.dhall#L160
--
-- ```dhall
--   ...
--  , node-http =
--     upstream.node-http
--     with repo = "https://github.com/srghma/purescript-node-http.git"
--     with version = "master"
--   ...
-- ```

let foam-space-packages =
      { web3 =
          { dependencies =
              [ "aff"
              , "avar"
              , "console"
              , "coroutines"
              , "coroutine-transducers"
              , "debug"
              , "effect"
              , "errors"
              , "eth-core"
              , "foreign"
              , "foreign-generic"
              , "fork"
              , "free"
              , "heterogeneous"
              , "identity"
              , "parsing"
              , "partial"
              , "profunctor-lenses"
              , "proxy"
              , "psci-support"
              , "tagged"
              , "transformers"
              , "typelevel-prelude"
              , "variant"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-web3"
          , version =
              "v3.0.0"
          }
      , web3-generator =
          { dependencies =
              [ "ansi"
              , "argonaut"
              , "console"
              , "effect"
              , "errors"
              , "eth-core"
              , "fixed-points"
              , "open-mkdirp-aff"
              , "node-fs-aff"
              , "ordered-collections"
              , "prelude"
              , "psci-support"
              , "record-extra"
              , "string-parsers"
              , "web3"
              , "yargs"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-web3-generator"
          , version =
              "v3.0.0"
          }
      , chanterelle =
          { dependencies =
              [ "console"
              , "debug"
              , "effect"
              , "foreign-object"
              , "logging"
              , "open-mkdirp-aff"
              , "node-process"
              , "optparse"
              , "prelude"
              , "psci-support"
              , "solc"
              , "validation"
              , "web3"
              , "web3-generator"
              ]
          , repo =
              "https://github.com/f-o-a-m/chanterelle"
          , version =
              "v5.1.3"
          }
      , eth-core =
          { dependencies =
              [ "argonaut"
              , "bytestrings"
              , "console"
              , "debug"
              , "effect"
              , "foreign-generic"
              , "ordered-collections"
              , "parsing"
              , "prelude"
              , "psci-support"
              , "ring-modules"
              , "simple-json"
              ]
          , repo =
              "https://github.com/srghma/purescript-eth-core"
          , version =
              "purs-14"
          }
      , solc =
          { dependencies =
              [ "aff"
              , "argonaut"
              , "console"
              , "effect"
              , "node-path"
              , "prelude"
              , "psci-support"
              , "web3"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-solc"
          , version =
              "v2.0.2"
          }
      , react-map-gl =
          { dependencies =
              [ "prelude"
              , "react"
              , "web-mercator"
              , "simple-json"
              , "generics-rep"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-react-map-gl"
          , version =
              "master"
          }
      , deck-gl =
          { dependencies =
              [ "effect"
              , "foreign"
              , "foreign-object"
              , "prelude"
              , "psci-support"
              , "web-mercator"
              , "react-dom"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-deck-gl"
          , version =
              "master"
          }
      , web-mercator =
          { dependencies =
              [ "partial", "prelude", "functions" ]
          , repo =
              "https://github.com/f-o-a-m/purescript-web-mercator"
          , version =
              "master"
          }
      , geohash =
          { dependencies =
              [ "eth-core", "strings" ]
          , repo =
              "https://github.com/f-o-a-m/purescript-geohash"
          , version =
              "master"
          }
      , websocket-simple =
          { dependencies =
              [ "exceptions"
              , "prelude"
              , "arraybuffer-types"
              , "nullable"
              , "web-socket"
              , "var"
              , "generics-rep"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-websocket-simple"
          , version =
              "spago"
          }
      , servant =
          { dependencies =
              [ "aff"
              , "prelude"
              , "affjax"
              , "heterogeneous"
              , "errors"
              , "argonaut"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-servant"
          , version =
              "master"
          }
      , tagged =
          { dependencies = [ "identity", "profunctor" ]
          , repo = "https://github.com/kejace/purescript-tagged"
          , version = "v0.14"
          }
      }

let other-packages =
      { coroutine-transducers =
          { dependencies =
              [ "aff", "coroutines", "effect", "maybe", "psci-support" ]
          , repo =
              "https://github.com/blinky3713/purescript-coroutine-transducers"
          , version =
              "v1.0.0"
          }
      , var =
          { dependencies =
              [ "effect", "contravariant", "invariant" ]
          , repo =
              "https://github.com/zudov/purescript-var"
          , version =
              "5d459b3e08bf7e7049fa9147fe4bb25fbead861a"
          }
      , halogen-renderless =
          { dependencies =
              [ "prelude", "control" ]
          , repo =
              "https://github.com/purescript-deprecated/purescript-halogen-renderless"
          , version =
              "v0.0.4"
          }
      }

in  foam-space-packages ⫽ other-packages
