{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "python-rendercv-shell";

  buildInputs = [
    pkgs.python313
  ];

  shellHook = ''
    echo "Setting up virtual environment with rendercv[full]..."

    if [ ! -d .venv ]; then
      python -m venv .venv
      source .venv/bin/activate
    else
      source .venv/bin/activate
    fi

    pip install 'rendercv[full]'

    echo "Environment ready. You're now using: $(python --version)"
  '';
}
