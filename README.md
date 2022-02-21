# Foam Space package set

## Usage

In `package.dhall`

```dhall
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.5-20220110/packages.dhall sha256:8dbf71bfc6c7a11043619eebe90ff85f7d884541048aa8cc48eef1ee781cbc0e

let foamSpace =
      https://raw.githubusercontent.com/srghma/foam.package-sets/COMMIT/packages.dhall

let overrides = {=}

let additions = {=}

in  upstream // foamSpace // overrides // additions
```

To validate use

```sh
dhall freeze --inplace ./packages.dhall
```

# Why this approach?

This approach is used in https://github.com/srghma/my-purescript-package-sets

But here it's also possible to "override" packages from upstream

Like this https://github.com/srghma/my-purescript-package-sets/blob/00e26e6c2441de7fe27889d36435ba7ede2c39cc/packages.dhall#L160

```dhall
  ...
 , node-http =
    upstream.node-http
    with repo = "https://github.com/srghma/purescript-node-http.git"
    with version = "master"
  ...
```

# Commands to update set

```sh
cd $HOME/projects/chanterelle-halogen-template

# to list dependencies, and then replace manually in ./packages.dhall
cd $HOME/projects/purescript-solc             && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/purescript-web3             && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/purescript-web3-generator   && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/chanterelle                 && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/purescript-servant          && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/purescript-websocket-simple && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/purescript-geohash          && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/purescript-web-mercator     && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/purescript-deck-gl          && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
cd $HOME/projects/purescript-react-map-gl     && pwd && spago ls deps --json | jq --raw-output '", \"" + .packageName + "\""'
```

```sh
# to remove hash
sd --flags c 'sha256:\w+' '' ./packages.dhall

# to update
# NOTE: `spago build` will add sha256
sd --flags c 'https://raw\.githubusercontent\.com/[^/]+/foam\.package-sets/[^/]+/packages.dhall( sha256:\w+)?' "https://raw.githubusercontent.com/srghma/foam.package-sets/$(cd ~/projects/foam.package-sets && git show -s --format=%h)/packages.dhall" ./packages.dhall && spago upgrade-set && spago build
```

```sh
cat > /tmp/package.dhall <<- EOM
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.5-20220216/packages.dhall sha256:890466a5e3ed4793ee702d8df8ef85a025fbacbdfeb63c73597aef2795c06845

let foamSpace =
      https://raw.githubusercontent.com/srghma/foam.package-sets/commit/packages.dhall

let overrides = {=}

let additions = {=}

in  upstream // foamSpace // overrides // additions
EOM

update () {( set -e
rm -f ./packages.dhall
cp /tmp/package.dhall ./packages.dhall
sd --flags c 'https://raw\.githubusercontent\.com/[^/]+/foam\.package-sets/[^/]+/packages.dhall( sha256:\w+)?' "https://raw.githubusercontent.com/srghma/foam.package-sets/$(cd ~/projects/foam.package-sets && git show -s --format=%h)/packages.dhall" ./packages.dhall && spago upgrade-set && spago build
)}
cd $HOME/projects/purescript-solc              && pwd && update
cd $HOME/projects/purescript-web3              && pwd && update
cd $HOME/projects/purescript-web3-generator    && pwd && update
cd $HOME/projects/chanterelle                  && pwd && update
cd $HOME/projects/chanterelle-halogen-template && pwd && update
# cd $HOME/projects/purescript-servant          &&
# cd $HOME/projects/purescript-websocket-simple &&
# cd $HOME/projects/purescript-geohash          &&
# cd $HOME/projects/purescript-web-mercator     &&
# cd $HOME/projects/purescript-deck-gl          &&
# cd $HOME/projects/purescript-react-map-gl     &&
```
