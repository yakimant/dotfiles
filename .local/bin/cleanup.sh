# Library/Caches/Homebrew
brew cleanup --prune=15 --quiet

# Library/Application Support/discord/Cache
find ~/Library/Application\ Support/discord/Cache/ -mtime +15 -exec rm -rf {} +

# .npm
# npm config set cache-max=500000000
npm cache clean --force

# .local/share/nvim
# :Lazy clean
# find ~/.local/share/nvim -type f -mtime +30 -delete

# Library/Caches/go-build
go clean -cache

# Library/Caches/Yarn
yarn cache clean --all

# .local/share/containers
# podman system prune -a

# Library/Caches/lima
# limactl prune

# .colima/_lima
# colima delete

# .cache/lima .cache/colima
colima prune --all --force

# Library/Application Support/Spotify/PersistentCache
# Settings → Storage → Clear cache
# rm -rf ~/Library/Application\ Support/Spotify/PersistentCache/*

# Library/Caches/com.spotify.client
find ~/Library/Caches/com.spotify.client -mtime +15 -exec rm -rf {} +

# go/pkg
go clean -modcache

# .local/share/pnpm
pnpm store prune
find ~/.local/share/pnpm/store/v3 -mtime +15 -exec rm -rf {} +

# .cache/nix

# .gradle/caches
# find ~/.gradle/caches -mtime +15 -exec rm -rf {} +

# Containers/6N38VWS5BX.ru.keepcoder.Telegram/stable/account-9307689324362236591/postbox/media
find ~/Library/Group\ Containers/6N38VWS5BX.ru.keepcoder.Telegram/stable/account-*/postbox/media \
  -name "telegram-*_partial" -mtime +15 -exec rm -rf {} +
