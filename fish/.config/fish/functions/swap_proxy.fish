function swap_proxy
    grep -qxFE '# PROXY|set -x -U ALL_PROXY proxy.wal-mart.com:9080' ~/.config/fish/config.fish && sed -i '' '/# PROXY/,/set -x -U ALL_PROXY proxy.wal-mart.com:9080/d' ~/.config/fish/config.fish ; set -e ALL_PROXY || echo -e '# PROXY\nset -x -U ALL_PROXY proxy.wal-mart.com:9080' >> ~/.config/fish/config.fish
    source ~/.config/fish/config.fish
    touch ~/.npmrc
    grep -qxFE 'registry=https://npme.walmart.com|email=mark.walters@walmart.com' ~/.npmrc && sed -i '' '/registry=https:\/\/npme.walmart.com/,/email=mark.walters@walmart.com/d' ~/.npmrc || echo -e 'registry=https://npme.walmart.com\nemail=mark.walters@walmart.com' >> ~/.npmrc
end
