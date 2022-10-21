filename="coc-settings.json"

echo { > "$filename"
echo '  "coc.preferences.formatOnType": true,' >> "$filename"
echo '  "coc.preferences.formatOnSaveFiletypes":  ["*"],' >> "$filename"
echo '  "rust-analyzer.server.path": "/home/'$USER'/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rust-analyzer"' >> "$filename"
echo } >> "$filename"


