function devenv --on-event fish_prompt
  # Load Scala env
  if type -q scalaenv
    if test -r .scala-version
      if test (type -t scalaenv) != 'function'
        source (scalaenv init - | psub)
      end
    end
  end

  # Load Conda env
  if type -q conda
    if test -r .conda-env
      if not set -q CONDA_DEFAULT_ENV
        set -l conda_env (cat .conda-env)
        eval conda "shell.fish" "hook" $argv | source
        conda activate $conda_env
      end
    end
  end

end
