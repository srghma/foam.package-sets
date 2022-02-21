let foam-space-packages =
      { web3 =
          { dependencies =
              [ "aff"
              , "argonaut"
              , "arrays"
              , "bifunctors"
              , "bytestrings"
              , "control"
              , "coroutine-transducers"
              , "coroutines"
              , "effect"
              , "either"
              , "errors"
              , "eth-core"
              , "exceptions"
              , "foldable-traversable"
              , "foreign"
              , "foreign-generic"
              , "foreign-object"
              , "fork"
              , "heterogeneous"
              , "integers"
              , "maybe"
              , "newtype"
              , "parallel"
              , "parsing"
              , "partial"
              , "prelude"
              , "profunctor-lenses"
              , "psci-support"
              , "record"
              , "ring-modules"
              , "simple-json"
              , "strings"
              , "tagged"
              , "tailrec"
              , "transformers"
              , "tuples"
              , "typelevel-prelude"
              , "unfoldable"
              , "variant"
              ]
          , repo =
              "https://github.com/srghma/purescript-web3"
          , version =
              "master"
          }
      , web3-generator =
          { dependencies =
              [ "aff"
              , "ansi"
              , "argonaut"
              , "argonaut-codecs"
              , "argonaut-core"
              , "argonaut-traversals"
              , "arrays"
              , "bifunctors"
              , "console"
              , "control"
              , "effect"
              , "either"
              , "errors"
              , "eth-core"
              , "exceptions"
              , "fixed-points"
              , "foldable-traversable"
              , "integers"
              , "language-cst-parser"
              , "lists"
              , "maybe"
              , "node-buffer"
              , "node-fs"
              , "node-fs-aff"
              , "node-path"
              , "nonempty"
              , "open-mkdirp-aff"
              , "ordered-collections"
              , "partial"
              , "prelude"
              , "profunctor-lenses"
              , "psci-support"
              , "string-parsers"
              , "strings"
              , "tidy-codegen"
              , "transformers"
              , "tuples"
              , "web3"
              , "yargs"
              ]
          , repo =
              "https://github.com/srghma/purescript-web3-generator"
          , version =
              "tidy"
          }
      , chanterelle =
          { dependencies =
              [ "aff"
              , "ansi"
              , "argonaut"
              , "argonaut-core"
              , "argonaut-traversals"
              , "arrays"
              , "avar"
              , "bifunctors"
              , "console"
              , "control"
              , "datetime"
              , "effect"
              , "either"
              , "eth-core"
              , "exceptions"
              , "foldable-traversable"
              , "foreign-object"
              , "functions"
              , "functors"
              , "integers"
              , "logging"
              , "maybe"
              , "newtype"
              , "node-buffer"
              , "node-fs"
              , "node-fs-aff"
              , "node-path"
              , "node-process"
              , "open-mkdirp-aff"
              , "optparse"
              , "ordered-collections"
              , "parallel"
              , "partial"
              , "prelude"
              , "profunctor-lenses"
              , "psci-support"
              , "record"
              , "refs"
              , "solc"
              , "strings"
              , "transformers"
              , "tuples"
              , "unfoldable"
              , "validation"
              , "web3"
              , "web3-generator"
              ]
          , repo =
              "https://github.com/srghma/chanterelle"
          , version =
              "master"
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
              "https://github.com/srghma/purescript-solc"
          , version =
              "master"
          }
      , react-map-gl =
          { dependencies =
              [ "aff"
              , "aff-bus"
              , "affjax"
              , "console"
              , "debug"
              , "effect"
              , "halogen"
              , "prelude"
              , "psci-support"
              , "react-dom"
              , "simple-json"
              , "web-mercator"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-react-map-gl"
          , version =
              "master"
          }
      , deck-gl =
          { dependencies =
              [ "console"
              , "effect"
              , "foreign"
              , "foreign-object"
              , "prelude"
              , "psci-support"
              , "react-dom"
              , "web-mercator"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-deck-gl"
          , version =
              "master"
          }
      , web-mercator =
          { dependencies =
              [ "console"
              , "effect"
              , "prelude"
              , "psci-support"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-web-mercator"
          , version =
              "master"
          }
      , geohash =
          { dependencies =
              [ "eth-core"
              , "prelude"
              , "psci-support"
              , "strings"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-geohash"
          , version =
              "master"
          }
      , websocket-simple =
          { dependencies =
              [ "console"
              , "effect"
              , "prelude"
              , "psci-support"
              ]
          , repo =
              "https://github.com/f-o-a-m/purescript-websocket-simple"
          , version =
              "spago"
          }
      , servant =
          { dependencies =
              [ "aff"
              , "affjax"
              , "argonaut"
              , "errors"
              , "heterogeneous"
              , "prelude"
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
      , dodo-printer =
        { dependencies =
          [ "ansi", "foldable-traversable", "lists", "maybe", "strings" ]
        , repo = "https://github.com/natefaubion/purescript-dodo-printer.git"
        , version = "v2.1.0"
        }
      , language-cst-parser =
        { dependencies =
          [ "arrays"
          , "const"
          , "effect"
          , "either"
          , "foldable-traversable"
          , "free"
          , "functors"
          , "maybe"
          , "numbers"
          , "ordered-collections"
          , "strings"
          , "transformers"
          , "tuples"
          , "typelevel-prelude"
          ]
        , repo =
            "https://github.com/natefaubion/purescript-language-cst-parser.git"
        , version = "v0.9.1"
        }
      , tidy =
        { dependencies =
          [ "arrays"
          , "dodo-printer"
          , "foldable-traversable"
          , "lists"
          , "maybe"
          , "ordered-collections"
          , "partial"
          , "prelude"
          , "language-cst-parser"
          , "strings"
          , "tuples"
          ]
        , repo =
            "https://github.com/natefaubion/purescript-tidy.git"
        , version = "v0.5.3"
        }
      , tidy-codegen =
        { dependencies =
          [ "aff"
          , "ansi"
          , "arrays"
          , "avar"
          , "bifunctors"
          , "console"
          , "control"
          , "dodo-printer"
          , "effect"
          , "either"
          , "enums"
          , "exceptions"
          , "filterable"
          , "foldable-traversable"
          , "free"
          , "identity"
          , "integers"
          , "language-cst-parser"
          , "lazy"
          , "lists"
          , "maybe"
          , "newtype"
          , "node-buffer"
          , "node-child-process"
          , "node-fs-aff"
          , "node-path"
          , "node-process"
          , "node-streams"
          , "ordered-collections"
          , "parallel"
          , "partial"
          , "posix-types"
          , "prelude"
          , "record"
          , "safe-coerce"
          , "strings"
          , "tidy"
          , "transformers"
          , "tuples"
          , "type-equality"
          , "unicode"
          ]
        , repo =
            "https://github.com/natefaubion/purescript-tidy-codegen.git"
        , version = "v1.1.1"
        }
      }

in  foam-space-packages ⫽ other-packages
