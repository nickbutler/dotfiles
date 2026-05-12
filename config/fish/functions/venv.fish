function venv
  python -m venv .venv
  echo "[env]
_.python.venv = \".venv\"" >> mise.toml
  mise trust
end
