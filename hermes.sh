cd $HOME
sudo apt update && sudo apt install make clang pkg-config libssl-dev build-essential git jq ncdu 
#install rust
sudo curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
#install hermes
git clone https://github.com/informalsystems/ibc-rs.git

cd ibc-rs
git checkout v1.0.0-rc.0
cargo build --release --bin hermes
mv $HOME/ibc-rs/target/release/hermes /usr/local/bin
hermes version
